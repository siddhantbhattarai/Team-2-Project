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

import com.ismt.Service.NewsService;
import com.ismt.models.News;

@Controller
public class NewsController {
	
	@Autowired
	private NewsService service;
	
	  @InitBinder
	    public void initBinder(WebDataBinder binder) {
	        binder.setDisallowedFields("image");
	    }
	
	@GetMapping("/news")
	public String getNews(Model model) {		
		model.addAttribute("newslist", service.getallNews());
		return"News";
	}
	
	@PostMapping("/news")
	public String posetNew(@ModelAttribute News news, @RequestParam("image") MultipartFile image, Model model)
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
               
                news.setImage(image.getOriginalFilename());
               service.addnews(news);
                model.addAttribute("message", " Upload Success !");
                return "redirect:/news";
            } catch (IOException e) {
                e.printStackTrace();
                model.addAttribute("message", "File upload failed. Please try again.");
                return "redirect:/news";  // Replace with your actual error page
            }
        } else {
        	 model.addAttribute("message", "Please select a file to upload.");
            return "redirect:/news";  // Replace with your actual form page
        }
			
		
		
	}
	
	@GetMapping("/delete")
	public String deleteNews(@RequestParam int id) {
		service.deleteNews(id);
		return"redirect:/news";
	}
	

}
