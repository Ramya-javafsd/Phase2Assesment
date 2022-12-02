package com.learners.pojo;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Student {
	@Id
	int stud_id;
	String stud_name;
	String stud_dob;
	String stud_addr;
	String stud_class;
	public int getStud_id() {
		return stud_id;
	}
	public void setStud_id(int stud_id) {
		this.stud_id = stud_id;
	}
	public String getStud_name() {
		return stud_name;
	}
	public void setStud_name(String stud_name) {
		this.stud_name = stud_name;
	}
	public String getStud_dob() {
		return stud_dob;
	}
	public void setStud_dob(String stud_dob) {
		this.stud_dob = stud_dob;
	}
	public String getStud_addr() {
		return stud_addr;
	}
	public void setStud_addr(String stud_addr) {
		this.stud_addr = stud_addr;
	}
	public String getStud_class() {
		return stud_class;
	}
	public void setStud_class(String stud_class) {
		this.stud_class = stud_class;
	}
	@Override
	public String toString() {
		return "Student [stud_id=" + stud_id + ", stud_name=" + stud_name + ", stud_dob=" + stud_dob + ", stud_addr="
				+ stud_addr + ", stud_class=" + stud_class + "]";
	}
	
	
	

}
