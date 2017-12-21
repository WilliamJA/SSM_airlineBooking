package martin.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;
import per.martin.entity.UserBasic;
import per.martin.mapper.UserMapper;
import per.martin.service.UserService;

import java.sql.SQLException;

public class UserServiceImpl implements UserService {
    private final UserMapper userMapper;

    @Autowired
    public UserServiceImpl(UserMapper userMapper) {
        Assert.notNull(userMapper,"userMapper must not be null!");
        this.userMapper = userMapper;
    }

    @Override
    public void userRegister(UserBasic userBasic) throws SQLException {
        userMapper.addUser(userBasic);
    }
}
