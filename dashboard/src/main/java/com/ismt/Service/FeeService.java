package com.ismt.Service;

import java.util.List;

import com.ismt.models.Fee;

public interface FeeService {
	
	void add(Fee fee);
	void delete(int id);
	void update(Fee fee);
	Fee getfeebyid(int id);
	List<Fee> getallFee();
	 List<Fee> getFeesByStudentId(int studentId); // New method
	

}
