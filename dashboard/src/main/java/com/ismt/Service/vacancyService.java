package com.ismt.Service;

import java.util.List;

import com.ismt.models.Vacancy;

public interface vacancyService {
	
	void add(Vacancy vacancy);
	void delete(int id);
	List<Vacancy> getallVacency();

}
