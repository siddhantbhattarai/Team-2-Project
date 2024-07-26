package com.ismt.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ismt.models.admin;

public interface adminRepository extends JpaRepository<admin, Long>{
	admin findByUsernameAndPassword(String username, String password);

}
