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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.ismt.Service.ResultService;
import com.ismt.Service.StudentService;
import com.ismt.models.Result;

@Controller
public class ResultController {

    @Autowired
    private ResultService service;
    
    @Autowired
    private StudentService sservice;
    
    
    @InitBinder
    public void initBinder(WebDataBinder binder) {
        // Adjust this method if there are any fields you want to disallow binding
    }

    @GetMapping("/resultadd")
    public String getResultAdd(Model model) {
        model.addAttribute("slist", sservice.getStudents());
        model.addAttribute("resultlist", service.getresult());
        return "ResultsAdd";
    }
    
    @PostMapping("/resultadd")
    public String postResultAdd(@ModelAttribute Result result, @RequestParam("resultPhoto") MultipartFile resultPhoto, RedirectAttributes redirectAttributes) {
        if (!resultPhoto.isEmpty()) {
            try {
                // Ensure the directory exists
                Path directoryPath = Path.of("src/main/resources/static/News/");
                if (Files.notExists(directoryPath)) {
                    Files.createDirectories(directoryPath);
                }

                // Save the file
                Path filePath = directoryPath.resolve(resultPhoto.getOriginalFilename());
                Files.copy(resultPhoto.getInputStream(), filePath, StandardCopyOption.REPLACE_EXISTING);

                result.setResultphoto(resultPhoto.getOriginalFilename());

                service.addresult(result);
                redirectAttributes.addFlashAttribute("message", "Upload Success!");
                return "redirect:/resultadd";
            } catch (IOException e) {
                e.printStackTrace();
                redirectAttributes.addFlashAttribute("message", "File upload failed. Please try again.");
                return "redirect:/resultadd";
            }
        } else {
            redirectAttributes.addFlashAttribute("message", "Please select a file to upload.");
            return "redirect:/resultadd";
        }
    }
}
