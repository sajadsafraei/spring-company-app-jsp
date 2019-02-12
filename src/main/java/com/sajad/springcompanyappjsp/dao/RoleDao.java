package com.sajad.springcompanyappjsp.dao;

import com.sajad.springcompanyappjsp.model.security.Role;
import org.springframework.data.repository.CrudRepository;


public interface RoleDao extends CrudRepository<Role, Integer> {
    Role findByName(String name);
}
