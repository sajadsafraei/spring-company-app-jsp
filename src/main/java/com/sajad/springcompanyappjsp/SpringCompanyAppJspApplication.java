package com.sajad.springcompanyappjsp;

import com.sajad.springcompanyappjsp.dao.RoleDao;
import com.sajad.springcompanyappjsp.model.security.Role;
import com.sajad.springcompanyappjsp.model.security.User;
import com.sajad.springcompanyappjsp.model.security.UserRole;
import com.sajad.springcompanyappjsp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@SpringBootApplication
public class SpringCompanyAppJspApplication implements ApplicationRunner {


	@Autowired
	UserService userService;

	@Autowired
	private RoleDao roleDao;


	public static void main(String[] args) {
		SpringApplication.run(SpringCompanyAppJspApplication.class, args);
	}

	@Override
	public void run(ApplicationArguments args) throws Exception {

		List<User> users = userService.findUserList();

		if (users.isEmpty()) {
			roleDao.save(new Role("ROLE_ADMIN"));
			roleDao.save(new Role("ROLE_R_BIMARESTAN"));
			roleDao.save(new Role("ROLE_M_OMORMALI"));
			roleDao.save(new Role("ROLE_M_KARPARDAZI"));
			roleDao.save(new Role("ROLE_USER"));

			User employee = new User();
			employee.setFirstName("Sajad");
			employee.setSemat("admin");
			employee.setUsername("Admin");
			employee.setPassword("8415");

			Set<UserRole> employeeRoles = new HashSet<>();

			employeeRoles.add(new UserRole(employee, roleDao.findByName("ROLE_ADMIN")));

			userService.createUser(employee, employeeRoles);


		}

	}

}


