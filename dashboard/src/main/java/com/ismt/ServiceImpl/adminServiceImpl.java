package com.ismt.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ismt.Repository.adminRepository;
import com.ismt.Service.adminService;
import com.ismt.models.admin;

@Service
public class adminServiceImpl implements adminService{
	
	@Autowired
	private adminRepository repo;

	@Override
	public admin login(String username, String password) {
		
		return repo.findByUsernameAndPassword(username, password);
	}

}
