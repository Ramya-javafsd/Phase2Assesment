package com.learners.pojo;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Classes {
	@Id
	int c_id;
	String c_name;
	String c_teacher;
	String c_subject;
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getC_teacher() {
		return c_teacher;
	}
	public void setC_teacher(String c_teacher) {
		this.c_teacher = c_teacher;
	}
	public String getC_subject() {
		return c_subject;
	}
	public void setC_subject(String c_subject) {
		this.c_subject = c_subject;
	}
	@Override
	public String toString() {
		return "Classes [c_id=" + c_id + ", c_name=" + c_name + ", c_teacher=" + c_teacher + ", c_subject=" + c_subject
				+ "]";
	}
	
	

}
