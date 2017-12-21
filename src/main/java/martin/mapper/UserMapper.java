package martin.mapper;

import org.springframework.stereotype.Repository;
import per.martin.entity.UserBasic;

import java.sql.SQLException;

@Repository(value = "UserMapper")
public interface UserMapper {
    void addUser(UserBasic userBasic) throws SQLException;

}
