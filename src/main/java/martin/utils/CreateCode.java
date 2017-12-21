package martin.utils;

import com.sun.image.codec.jpeg.ImageFormatException;
import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.*;
import java.util.*;
import java.util.List;

import static java.awt.Font.BOLD;

/**
 * Created by LENOVO on 2017/6/22.
 * 获取验证码
 */
public class CreateCode {
    // 图片的宽度。
    private int width = 42;
    // 图片的高度。
    private int height = 42;
    // 验证码干扰线数
    private int pointCount = 150;
    //验证码的个数
    private int count = 5;
    private String codePath = Thread.currentThread().getContextClassLoader().getResource("/code").getPath();
    private String codeImgPath = Thread.currentThread().getContextClassLoader().getResource("/codeImgs").getPath();
    public List<String> getWord() throws NullPointerException {
        File files = new File(codePath);
        List<String> words = new ArrayList<String>();
        for (File file : files.listFiles()) {
            if (file.isFile() && file.getName().endsWith(".word")) {
                words.add(file.getName());
            }
        }
        return words;
    }

    /**
     * @param file
     * @param bound
     * @param flag  为真是表示生成词条的验证码，为false时表示生成干扰验证码
     * @return
     * @throws FileNotFoundException
     * @throws IOException
     */

    public List<String> readeCodeFileBbyWord(String file, int bound, boolean flag) throws FileNotFoundException, IOException {
        List<String> codeContent = new ArrayList<String>();
        List<String> randomContent = new ArrayList<String>();

        BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(file), "UTF-8"));
        String line;
        while ((line = reader.readLine()) != null) {
            codeContent.add(line);
        }

        if (flag) {
            //随机生成词条验证码个数
            Random content = new Random();
            int wordLength = content.nextInt(bound);
            for (int i = 0; i < wordLength; i++) {
                int randomAdd = content.nextInt(codeContent.size());
                randomContent.add(codeContent.get(randomAdd));
            }
        }

        if (!flag) {
            for (int i = 0; i < bound; i++) {
                Random random = new Random();
                int randomAdd = random.nextInt(codeContent.size());
                randomContent.add(codeContent.get(randomAdd));
            }
        }
        return randomContent;
    }

    public Map<String, List<String>> getStringCode() throws IOException {
        Map<String, List<String>> stringCode = new HashMap<String, List<String>>();

        //随机获得一个验证码文件
        List<String> words = getWord();
        Random random = new Random();
        String word = words.get(random.nextInt(words.size()));

        //根据随机获得的词条生成验证码
        List<String> code = readeCodeFileBbyWord(codePath + word, count + 1, true);
        //如果验证码小于5则生成干扰选项
        List<String> interference = readeCodeFileBbyWord(codePath + "interference/interference.word", count - code.size(), false);

        //打乱验证码和干扰项
        if(interference != null && code.size() > 0) {
            for (String s : interference) {
                int index = code.size() - 1;
                System.out.println(index);
                code.add(random.nextInt(index), s);
            }
        }

        stringCode.put(word,code);
        return stringCode;
    }

    public List<String> getCode() throws Exception {
        int x = 0;
        int codeY = 0;
        x = width / 4 - width / 16;//每个字符的宽度
        codeY = height / 2 + height / 8;

        Map<String, List<String>> code = getStringCode();
        Set<String> word = code.keySet();
        Iterator<String> it = word.iterator();
        List<String> codeContent = code.get(it.next());

        List<String> filePath = new ArrayList<String>();

        Font font = new Font("宋体", BOLD, 15);
        for (int i = 0; i < 5; i++) {
            File file = new File(codeImgPath + i + ".jpg");
            BufferedImage bi = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
            Graphics2D g2 = (Graphics2D) bi.getGraphics();
            g2.setBackground(Color.WHITE);
            g2.clearRect(0, 0, width, height);
            g2.setPaint(Color.black);
            g2.setFont(font);
            //绘制干扰点
            for (int j = 0; j < pointCount; j++) {
                Random random = new Random();
                int pointPositionWidth = random.nextInt(width);
                int pointPositionHeight = random.nextInt(height);
                g2.setColor(new Color(67, 67, 67));
                g2.drawLine(pointPositionWidth, pointPositionHeight, pointPositionWidth, pointPositionHeight);
            }
            g2.drawString(codeContent.get(i), x, codeY);
            ImageIO.write(bi, "jpg",file);
            filePath.add(file.getPath());
        }
        System.out.println(filePath);
        return filePath;
    }

    public List<ByteArrayInputStream> convertImageToStream(List<BufferedImage> img) {
        List<ByteArrayInputStream> stream = new ArrayList<ByteArrayInputStream>();
        ByteArrayInputStream inputStream;
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        JPEGImageEncoder jpeg = JPEGCodec.createJPEGEncoder(bos);
        try {
            for (int i = 0; i < img.size(); i++) {
                jpeg.encode(img.get(i));
                byte[] bts = bos.toByteArray();
                inputStream = new ByteArrayInputStream(bts);
                stream.add(inputStream);
            }
        } catch (ImageFormatException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return stream;
    }

}
