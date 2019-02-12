package com.sajad.springcompanyappjsp.controller;

import com.sajad.springcompanyappjsp.model.Company;
import com.sajad.springcompanyappjsp.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class CompanyController {

    @Autowired
    CompanyService companyService;


    @GetMapping("/getCompany")
    public String getCompany(Model model) {
        Company company = new Company();

        model.addAttribute("company", company);
        List<Company> companyList = companyService.findAll();
        model.addAttribute("companyList", companyList);


        return "company";
    }

    @PostMapping("/saveCompany")
    public String postCompany(@ModelAttribute("company") Company company, Model model) {

        Company save = companyService.save(company);

        return "redirect:/getCompany";
    }

    @GetMapping("/editCompany")
    public String getCompany(@RequestParam(value = "companyName") String companyName, Model model) {

        Company company = companyService.findByName(companyName);
        model.addAttribute("company", company);
        List<Company> companyList = companyService.findAll();
        model.addAttribute("companyList", companyList);
        return "company";
    }

}
