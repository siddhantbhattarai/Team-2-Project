package com.ismt.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;


import com.ismt.models.Fee;

public interface FeeReppsitory extends JpaRepository<Fee, Integer>{


	List<Fee> findByStudentId(int studentId);
}
