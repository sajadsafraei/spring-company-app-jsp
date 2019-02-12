package com.sajad.springcompanyappjsp.service;




import com.sajad.springcompanyappjsp.model.security.User;
import com.sajad.springcompanyappjsp.model.security.UserRole;

import java.util.List;
import java.util.Set;

public interface UserService {

    User findByUsername(String username);


    boolean checkUserExists(String username, String email);

    boolean checkUsernameExists(String username);

    User createUser(User user, Set<UserRole> userRoles);

    User saveUser(User user);

    List<User> findUserList();

    void deleteByUsername(String userName);

    void enableUser(String username);

    void disableUser(String username);
}
