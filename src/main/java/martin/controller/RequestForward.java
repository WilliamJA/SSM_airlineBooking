package martin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class RequestForward {

    @RequestMapping(value = "/indexPage.action", method = {RequestMethod.GET})
    public void indexPage(HttpServletRequest request , HttpServletResponse response) {
        request.setAttribute("contentUrl","index.html");
        try {
            request.getRequestDispatcher("WEB-INF/views/index.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping(value = "/loginPage.action", method = RequestMethod.GET)
    public void loginPage(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("contentUrl","login.jsp");
        try {
            request.getRequestDispatcher("WEB-INF/views/index.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping(value = "/registerPage.action", method = RequestMethod.GET)
    public void registerPage(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("contentUrl","register.jsp");
        try {
            request.getRequestDispatcher("WEB-INF/views/index.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping(value = "/findPasswordPage.action", method = RequestMethod.GET)
    public void findPassword(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("contentUrl","findPassword.html");
        try {
            request.getRequestDispatcher("WEB-INF/views/index.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping(value = "/registerSuccessPage.action", method = RequestMethod.GET)
    public void registerSuccess(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("contentUrl","registerSuccess.jsp");
        try {
            request.getRequestDispatcher("WEB-INF/views/index.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
