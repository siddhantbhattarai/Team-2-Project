package com.ismt.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ismt.models.Attendance;

public interface AttendanceRepository extends JpaRepository<Attendance, Integer> {

}
