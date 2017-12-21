package martin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import per.martin.entity.UserBasic;
import per.martin.mapper.UserMapper;
import per.martin.service.UserService;
import per.martin.serviceimpl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.UUID;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/userRegister.action", method = RequestMethod.POST)
    public void userRegister(HttpServletRequest request, HttpServletResponse response,
                             UserBasic userBasic) {
        userBasic.setId(UUID.randomUUID().toString());

        try {
            userService.userRegister(userBasic);
            request.getRequestDispatcher("/registerSuccessPage.action").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        }catch (SQLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
