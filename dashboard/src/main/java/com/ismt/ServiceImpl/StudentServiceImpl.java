package com.ismt.ServiceImpl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ismt.Repository.StudentRepository;
import com.ismt.Service.StudentService;
import com.ismt.models.Fee;
import com.ismt.models.Result;
import com.ismt.models.Student;

@Service
public class StudentServiceImpl implements StudentService{

	@Autowired
	private StudentRepository repo;
	@Override
	public void addStudent(Student student) {
		repo.save(student);
		
	}

	@Override
	public void deleteStudent(int id) {
		repo.deleteById(id);	
	}

	@Override
	public void updatEmployee(Student student) {
		repo.save(student);
		
	}

	@Override
	public Student getStudentById(int id) {
		
		return repo.findById(id).get();
	}

	@Override
	public List<Student> getStudents() {
		// TODO Auto-generated method stub
		return repo.findAll();
	}

	@Override
	public long countStudents() {
		
		return repo.count();
	}

	

	@Override
	public List<Student> getStudentsBySection(String Semester) {
		
		return null;
	}

	@Override
	public Student login(String username, String password) {
		
		return repo.findByUsernameAndPassword(username, password);
	}

	@Override
	public List<Result> getResultsByStudentId(int id) {
		
		return null;
	}

	@Override
	public Fee getFeeByStudentId(int studentId) {
		Student student = repo.findById(studentId).orElse(null);
        if (student != null) {
            return student.getFee();
        }
        return null;
	}

}
