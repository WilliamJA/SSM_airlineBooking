package martin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import per.martin.utils.CreateCode;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.List;

@Controller
public class CheckCode {

    @RequestMapping(value = "/getCode.action", method = RequestMethod.GET)
    public void getCode(HttpServletRequest request, HttpServletResponse response) {
        CreateCode createCode = new CreateCode();
        try {
            List<String> imgs = createCode.getCode();
            request.setAttribute("checkCode",imgs);
            request.getRequestDispatcher("/loginPage.action").forward(request,response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
