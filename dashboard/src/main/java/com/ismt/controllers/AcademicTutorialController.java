package com.ismt.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.ismt.Service.AcademicTutorialService;
import com.ismt.models.AcademicTutorial;

@Controller
public class AcademicTutorialController {

    @Autowired
    private AcademicTutorialService service;

    @GetMapping("/academictutorial")
    public String getAcademicTutorial(Model model) {
        model.addAttribute("Alist", service.getallAcademicTutorial());
        return "AcademicTutorial";
    }

    @PostMapping("/academictutorial")
    public String postAcademicTutorial(@ModelAttribute AcademicTutorial academicTutorial) {
        service.addAcademicTutorial(academicTutorial);
        return "redirect:/academictutorial";
    }
}

