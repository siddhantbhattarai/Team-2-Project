package com.ismt.Service;

import java.util.List;

import com.ismt.models.AcademicTutorial;

public interface AcademicTutorialService {
	
	void addAcademicTutorial(AcademicTutorial academicTutorial);
	void deleteAcademicTutorial(int id);
	AcademicTutorial getAcademicTutorialByid(int id);
	List<AcademicTutorial> getallAcademicTutorial();


}
