package com.ismt.controllers;


import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.ismt.Service.StudentService;
import com.ismt.models.Student;


@Controller
public class StudentController {
	@Autowired
	private StudentService service;
	
	 @InitBinder
	    public void initBinder(WebDataBinder binder) {
	        binder.setDisallowedFields("profilepic");
	    }
	
	@GetMapping("/studentview")
	public String getStudent(Model model) {
		model.addAttribute("students",service.getStudents());
		return"students";
	}

	@GetMapping("/addstudent")
	public String getStudentAdd() {
		return"StudentAdd";
	}
	
	@PostMapping("/addstudent")
	public String postStudentAdd(@ModelAttribute Student student, @RequestParam("profilepic") MultipartFile image, Model model)
	 {		
		if (!image.isEmpty()) {
            try {
               
                Path directoryPath = Path.of("src/main/resources/static/News/");
                if (Files.notExists(directoryPath)) {
                    Files.createDirectories(directoryPath);
                }

                // Save the file
                Path filePath = directoryPath.resolve(image.getOriginalFilename());
                Files.copy(image.getInputStream(), filePath, StandardCopyOption.REPLACE_EXISTING);

                // Set the file name in the student object
               
                
                student.setProfilepic(image.getOriginalFilename());
               service.addStudent(student);
                model.addAttribute("message", " Upload Success !");
                return "redirect:/studentview";
            } catch (IOException e) {
                e.printStackTrace();
                model.addAttribute("message", "File upload failed. Please try again.");
                return "redirect:/studentview";  // Replace with your actual error page
            }
        } else {
        	 model.addAttribute("message", "Please select a file to upload.");
            return "redirect:/studentview";  // Replace with your actual form page
        }
			
	}
	
	@GetMapping("/std/delete")
	public String DeleteEmployee(@RequestParam int id) {
		service.deleteStudent(id);
		return"redirect:/studentview";
	}
	
	@GetMapping("/edit")
	public String editStudent(@RequestParam int id, Model model) {
		model.addAttribute("sModel", service.getStudentById(id));
		return"sEdit";
	}
	@PostMapping("/update/student")
	public String updateStudent(@ModelAttribute Student student) {
		service.updatEmployee(student);
		return"redirect:/studentview";
	}
	
	
	


	
	
}
