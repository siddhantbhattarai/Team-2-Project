package com.ismt.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.ismt.Service.StudentService;
import com.ismt.Service.adminService;
import com.ismt.models.admin;

import jakarta.servlet.http.HttpSession;

@Controller
public class adminController {

    private final adminService service;
    private final StudentService stservice; // Ensure it's final to prevent reassignment

    @Autowired
    public adminController(adminService service, StudentService stservice) {
        this.service = service;
        this.stservice = stservice;
    }

    @GetMapping({"/", "/login"})
    public String getDashboard() {
        return "login";
    }

    @PostMapping("/login")
    public String postlogin(@ModelAttribute admin admin, Model model, HttpSession session) {
        admin a = service.login(admin.getUsername(), admin.getPassword());
        if (a != null) {
            session.setAttribute("validuser", a);
            session.setMaxInactiveInterval(500);

            long studentCount = stservice.countStudents();
            model.addAttribute("studentCount", studentCount);

            return "dashboard";
        }
        model.addAttribute("message", "You are not authorized user !");
        return "login";
    }

    @GetMapping("/logout")
    public String getLogout(HttpSession session) {
        session.invalidate();
        return "login";
    }


    @GetMapping("/students")
    public String getStudents() {
        return "students"; // Assuming "students" is the correct view name for displaying students
    }
}
