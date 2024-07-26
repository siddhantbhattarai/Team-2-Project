package com.ismt.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ismt.Repository.ResultRepository;
import com.ismt.Service.ResultService;
import com.ismt.models.Result;

@Service
public class ResultserviceImpl implements ResultService{
	
	@Autowired
	private ResultRepository repo;

	@Override
	public void addresult(Result result) {
		
		repo.save(result);
	}

	@Override
	public void deleteresult(int resultId) {
		repo.deleteById(resultId);
		
	}

	@Override
	public void updateresult(Result result) {
		repo.save(result);
		
	}

	@Override
	public Result getresultbyid(int resultId) {
		
		return repo.findById(resultId).get();
	}

	@Override
	public List<Result> getresult() {
		
		return repo.findAll();
	}

	@Override
	public List<Result> getResultsByStudentId(int studentId) {
		
		return repo.findByStudentId(studentId);
	}

}
