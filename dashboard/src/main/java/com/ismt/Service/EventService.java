package com.ismt.Service;

import java.util.List;

import com.ismt.models.Event;

public interface EventService {
	
	void eventadd(Event event);
	List<Event> getallEvent();

}
