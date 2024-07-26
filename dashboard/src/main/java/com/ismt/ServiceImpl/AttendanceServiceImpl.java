package com.ismt.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ismt.Repository.AttendanceRepository;
import com.ismt.Service.AttendanceService;
import com.ismt.models.Attendance;

@Service
public class AttendanceServiceImpl implements AttendanceService{
	
	@Autowired
	private AttendanceRepository repo;
	
	@Override
	public void saveAttendance(Attendance attendance) {
		repo.save(attendance);
		
	}

	@Override
	public Attendance getAttendanceById(int id) {
		
		return repo.findById(id).orElse(null);
	}

	@Override
	public List<Attendance> getAllAttendances() {
		
		return repo.findAll();
	}

}
