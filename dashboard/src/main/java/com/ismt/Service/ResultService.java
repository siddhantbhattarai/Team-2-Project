package com.ismt.Service;

import java.util.List;

import com.ismt.models.Result;

public interface ResultService {
	
	
	void addresult(Result result);
	void deleteresult(int resultId);
	void updateresult(Result result);
	Result getresultbyid(int resultId);
	List<Result> getresult();
	 List<Result> getResultsByStudentId(int studentId);

}
