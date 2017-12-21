package martin.service;

import org.springframework.stereotype.Service;
import per.martin.entity.UserBasic;

import java.sql.SQLException;

@Service(value = "UserService")
public interface UserService {
    void userRegister(UserBasic userBasic) throws SQLException;
}
