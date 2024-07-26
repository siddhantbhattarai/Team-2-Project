package com.ismt.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ismt.Repository.vacancyRepository;
import com.ismt.Service.vacancyService;
import com.ismt.models.Vacancy;

@Service
public class vacancyServiceImpl implements vacancyService {
	
	@Autowired
	private vacancyRepository repo;

	@Override
	public void add(Vacancy vacancy) {
		repo.save(vacancy);
		
	}

	@Override
	public void delete(int id) {
		repo.deleteById(id);
		
	}

	@Override
	public List<Vacancy> getallVacency() {
		
		return repo.findAll();
	}

}
