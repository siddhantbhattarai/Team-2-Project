package com.ismt.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ismt.Repository.AcademicTutorialRepository;
import com.ismt.Service.AcademicTutorialService;
import com.ismt.models.AcademicTutorial;

@Service
public class AcademicTutorialServiceimpl  implements AcademicTutorialService {

	@Autowired
	private AcademicTutorialRepository repo;

	@Override
	public void addAcademicTutorial(AcademicTutorial academicTutorial) {
		repo.save(academicTutorial);
		
	}

	@Override
	public void deleteAcademicTutorial(int id) {
    repo.deleteById(id);		
	}

	@Override
	public AcademicTutorial getAcademicTutorialByid(int id) {
		
		return repo.findById(id).get();
	}

	@Override
	public List<AcademicTutorial> getallAcademicTutorial() {
		
		return repo.findAll();
	}






	

}
