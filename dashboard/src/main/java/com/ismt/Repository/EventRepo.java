package com.ismt.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ismt.models.Event;

public interface EventRepo extends JpaRepository<Event, Integer>{

}
