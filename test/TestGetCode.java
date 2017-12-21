import org.junit.Test;
import per.martin.utils.CreateCode;

public class TestGetCode {
    @Test
    public void testGetWords() {
        CreateCode createCode = new CreateCode();
        System.out.println(createCode.getWord());
    }
}
