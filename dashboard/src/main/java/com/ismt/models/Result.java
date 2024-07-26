
package com.ismt.models;

import java.util.List;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "Studentresult")
public class Result {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int resultId;
    
    @ManyToMany
    private List<Student> student;
    
    private String resultphoto;
    private String semester;
    private String passfail;
	public int getResultId() {
		return resultId;
	}
	public void setResultId(int resultId) {
		this.resultId = resultId;
	}
	public List<Student> getStudent() {
		return student;
	}
	public void setStudent(List<Student> student) {
		this.student = student;
	}
	public String getResultphoto() {
		return resultphoto;
	}
	public void setResultphoto(String resultphoto) {
		this.resultphoto = resultphoto;
	}
	public String getPassfail() {
		return passfail;
	}
	public void setPassfail(String passfail) {
		this.passfail = passfail;
	}
	public String getSemester() {
		return semester;
	}
	public void setSemester(String semester) {
		this.semester = semester;
	}
    
    
    
}