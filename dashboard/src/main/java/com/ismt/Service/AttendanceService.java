package com.ismt.Service;

import java.util.List;

import com.ismt.models.Attendance;

public interface AttendanceService {
	 void saveAttendance(Attendance attendance);
	    Attendance getAttendanceById(int id);
	    List<Attendance> getAllAttendances();
	

}
