package com.sajad.springcompanyappjsp.dao;

import com.sajad.springcompanyappjsp.model.Company;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CompanyDAO extends CrudRepository<Company,Long> {

    Company findByCompanyName(String name);
}
