package com.ismt.Service;

import java.util.List;

import com.ismt.models.Fee;
import com.ismt.models.Result;
import com.ismt.models.Student;


public interface StudentService {
	
	void addStudent(Student student);
	void deleteStudent(int id);
	void updatEmployee(Student student);
	Student getStudentById(int id);
	List<Student> getStudents();
	long countStudents();
	List<Student> getStudentsBySection(String Semester);
	Student login(String username, String password);
	List<Result> getResultsByStudentId(int id); 
	Fee getFeeByStudentId(int studentId);
}
