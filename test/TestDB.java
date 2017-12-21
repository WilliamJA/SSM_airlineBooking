import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import javax.sql.DataSource;
import java.sql.SQLException;

public class TestDB {
    public ApplicationContext context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");

    @Test
    public void testConnection() {
        DataSource dataSource = (DataSource) context.getBean("dataSource");
        try {
            System.out.println(dataSource.getConnection());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void testDataSource() {
        System.out.println(context.getBean("dataSource"));
    }




}
