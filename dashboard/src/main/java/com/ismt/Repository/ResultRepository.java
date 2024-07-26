package com.ismt.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ismt.models.Result;

public interface ResultRepository extends JpaRepository<Result, Integer>{

	List<Result> findByStudentId(int studentId);
}
