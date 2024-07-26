package com.ismt.api;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ismt.Service.ResultService;
import com.ismt.models.Result;

@RestController
@RequestMapping("/api/result")
public class ResultApi {
    
    @Autowired
    private ResultService service;
    

    @GetMapping("/student/{studentId}")
    public ResponseEntity<List<Result>> getResultsByStudentId(@PathVariable int studentId) {
        List<Result> results = service.getResultsByStudentId(studentId);
        return new ResponseEntity<>(results, HttpStatus.OK);
    }
    

}
