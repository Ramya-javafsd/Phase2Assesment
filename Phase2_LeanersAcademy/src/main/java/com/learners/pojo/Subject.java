package com.learners.pojo;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Subject {

	@Id
	int sub_id;
	String sub_name;
	public int getSub_id() {
		return sub_id;
	}
	public void setSub_id(int sub_id) {
		this.sub_id = sub_id;
	}
	public String getSub_name() {
		return sub_name;
	}
	public void setSub_name(String sub_name) {
		this.sub_name = sub_name;
	}
	@Override
	public String toString() {
		return "Subject [sub_id=" + sub_id + ", sub_name=" + sub_name + "]";
	}
	
	
	
}
