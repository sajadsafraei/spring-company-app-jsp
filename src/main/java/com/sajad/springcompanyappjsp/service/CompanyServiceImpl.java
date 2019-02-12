package com.sajad.springcompanyappjsp.service;

import com.sajad.springcompanyappjsp.dao.CompanyDAO;
import com.sajad.springcompanyappjsp.model.Company;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CompanyServiceImpl implements CompanyService {

    @Autowired
    private CompanyDAO companyDAO;


    @Override
    public List<Company> findAll() {
        List<Company> all = (List<Company>) companyDAO.findAll();
        return all;
    }

    @Override
    public Company findOneByID(Long id) {
        Optional<Company> company = companyDAO.findById(id);
        return company.get();
    }

    @Override
    public Company findByName(String name) {
        Company company = companyDAO.findByCompanyName(name);

        return company;
    }

    @Override
    public void deleteById(Long id) {
        companyDAO.deleteById(id);
    }

    @Override
    public Company save(Company company) {
        Company save = companyDAO.save(company);
        return save;
    }
}
