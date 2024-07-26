package com.ismt.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ismt.Service.AcademicTutorialService;
import com.ismt.models.AcademicTutorial;

@RestController
@RequestMapping("/api/academicTutorial")
public class AcademicTutorialApi {

    @Autowired
    private AcademicTutorialService service;
    
    @GetMapping("/all")
    public List<AcademicTutorial> getAllAcademicTutorials() {
        return service.getallAcademicTutorial();
    }
    
    
}
