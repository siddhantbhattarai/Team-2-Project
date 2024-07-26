package com.ismt.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ismt.models.Vacancy;

public interface vacancyRepository extends JpaRepository<Vacancy, Integer>{

}
