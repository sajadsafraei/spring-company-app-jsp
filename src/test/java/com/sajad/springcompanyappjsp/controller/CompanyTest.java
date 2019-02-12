package com.sajad.springcompanyappjsp.controller;

import com.sajad.springcompanyappjsp.model.Company;
import com.sajad.springcompanyappjsp.service.CompanyService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.TestComponent;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.*;

@RunWith(SpringRunner.class)
@SpringBootTest
public class CompanyTest {

    @Autowired
    CompanyService companyService;


    @Test
    public void add_model_successFuly(){
        Company company=new Company();
        company.setCompanyName("sjad");

        Company save = companyService.save(company);

        assertEquals(company.getCompanyName(),save.getCompanyName());


    }


}