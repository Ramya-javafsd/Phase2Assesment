package com.learners.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

import com.learners.pojo.Teacher;

public class TeacherDao {

	public String addTeacher(Teacher t) {
		Transaction tx = null;
		int row=0;
		try {
			Configuration cfg = new Configuration().configure();
			cfg.addAnnotatedClass(com.learners.pojo.Teacher.class);
			StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties());
			SessionFactory factory = cfg.buildSessionFactory(builder.build());
			Session session = factory.openSession();
			tx = session.beginTransaction();
			row=(Integer)session.save(t);
			tx.commit();
			session.close();
		}catch (Exception e) {
			e.printStackTrace();
			if(tx!=null) {
				tx.rollback();
			}
			
	}
		if(row>0) return "Teacher added Succesfully";
		
		else return "Teacher adding Failed ";

	}
}
