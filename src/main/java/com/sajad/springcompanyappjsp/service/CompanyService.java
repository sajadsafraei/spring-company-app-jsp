package com.sajad.springcompanyappjsp.service;

import com.sajad.springcompanyappjsp.model.Company;

import java.util.List;
import java.util.Optional;

public interface CompanyService {
    List<Company> findAll();

    Company findOneByID(Long id);
    Company findByName(String name);

    void deleteById(Long id);

    Company save(Company company);
}
