package com.ismt.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.http.ResponseEntity;

import com.ismt.Service.StudentService;
import com.ismt.models.Student;

@RestController
@RequestMapping("/api/student")
public class Studentapi {

    @Autowired
    private StudentService service;

    @GetMapping("/list")
    public List<Student> getAllStudents() {
        return service.getStudents();
    }

    @PostMapping("/login")
    public ResponseEntity<?> postLogin(@RequestBody Student loginRequest) {
        Student student = service.login(loginRequest.getUsername(), loginRequest.getPassword());
        if (student != null) {
            return ResponseEntity.ok(new LoginResponse(student.getId()));
        } else {
            return ResponseEntity.status(401).body("Invalid username or password");
        }
    }
    
    @GetMapping("/{id}")
    public ResponseEntity<Student> getStudentById(@PathVariable("id") int id) {
        Student student = service.getStudentById(id);
        if (student != null) {
            return ResponseEntity.ok(student);
        } else {
            return ResponseEntity.status(404).body(null);
        }
    }
    
    public static class LoginResponse {
        private int id;

        public LoginResponse(int id) {
            this.id = id;
        }

        public int getId() {
            return id;
        }

        public void setId(int id) {
            this.id = id;
        }
    }
}
