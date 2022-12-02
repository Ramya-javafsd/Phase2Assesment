package com.learners.pojo;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Teacher {
	@Id
	int t_id;
	String t_name;
	String t_class;
	public int getT_id() {
		return t_id;
	}
	public void setT_id(int t_id) {
		this.t_id = t_id;
	}
	public String getT_name() {
		return t_name;
	}
	public void setT_name(String t_name) {
		this.t_name = t_name;
	}
	
	public String getT_class() {
		return t_class;
	}
	public void setT_class(String t_class) {
		this.t_class = t_class;
	}
	@Override
	public String toString() {
		return "Teacher [t_id=" + t_id + ", t_name=" + t_name + "]";
	}
	

}
