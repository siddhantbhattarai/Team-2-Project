package com.ismt.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ismt.models.StudentPost;

public interface StpostRepo extends JpaRepository<StudentPost, Integer>{

}
