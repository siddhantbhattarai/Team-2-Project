package com.ismt.Service;

import java.util.List;

import com.ismt.models.StudentPost;

public interface StudentPostService {
	
	void add(StudentPost stdpost);
	void delete(int postId);
	void update(StudentPost stdpost);
	List<StudentPost> getstdpost();
	StudentPost getpostbyid(int postId);

}
