package com.sajad.springcompanyappjsp.dao;

import com.sajad.springcompanyappjsp.model.security.User;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface UserDao extends CrudRepository<User, Long> {

    User findByUsername(String username);

    List<User> findAll();

    void deleteByUsername(String userName);

}
