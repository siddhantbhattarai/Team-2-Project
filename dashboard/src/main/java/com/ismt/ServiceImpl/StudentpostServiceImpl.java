package com.ismt.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ismt.Repository.StpostRepo;
import com.ismt.Service.StudentPostService;
import com.ismt.models.StudentPost;

@Service
public class StudentpostServiceImpl implements StudentPostService{

	@Autowired
	private StpostRepo repo;
	
	@Override
	public void add(StudentPost stdpost) {
		repo.save(stdpost);
		
	}

	@Override
	public void delete(int postId) {
		repo.deleteById(postId);
		
	}

	@Override
	public void update(StudentPost stdpost) {
		repo.save(stdpost);
		
	}

	@Override
	public List<StudentPost> getstdpost() {
		
		return repo.findAll();
	}

	@Override
	public StudentPost getpostbyid(int postId) {
	
		return repo.findById(postId).get();
	}

}
