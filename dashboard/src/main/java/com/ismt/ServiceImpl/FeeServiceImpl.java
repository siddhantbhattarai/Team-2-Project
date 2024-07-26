package com.ismt.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ismt.Repository.FeeReppsitory;
import com.ismt.Service.FeeService;
import com.ismt.models.Fee;

@Service
public class FeeServiceImpl implements FeeService{
	
	@Autowired
	private FeeReppsitory repo;

	@Override
	public void add(Fee fee) {
		
		repo.save(fee);
	}

	@Override
	public void delete(int id) {
		repo.deleteById(id);
		
	}

	@Override
	public void update(Fee fee) {
		repo.save(fee);
	}

	@Override
	public Fee getfeebyid(int id) {
		
		return repo.findById(id).get();
	}

	@Override
	public List<Fee> getallFee() {
		
		return repo.findAll();
	}

	@Override
	public List<Fee> getFeesByStudentId(int studentId) {
		
		return repo.findByStudentId(studentId);
	}

}
