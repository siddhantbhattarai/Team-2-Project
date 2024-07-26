package com.ismt.Repository;



import org.springframework.data.jpa.repository.JpaRepository;

import com.ismt.models.Student;


public interface StudentRepository extends JpaRepository<Student, Integer>{

	
	 Student findByUsernameAndPassword(String username, String password);
}

