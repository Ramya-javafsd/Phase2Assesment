package com.learners.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

import com.learners.pojo.Classes;

public class ClassDao {
	public String addClass(Classes c) {
		Transaction tx = null;
		int row=0;
		try {
			Configuration cfg = new Configuration().configure();
			cfg.addAnnotatedClass(com.learners.pojo.Classes.class);
			StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties());
			SessionFactory factory = cfg.buildSessionFactory(builder.build());
			Session session = factory.openSession();
			tx = session.beginTransaction();
			row=(Integer)session.save(c);
			tx.commit();
			session.close();
		}catch (Exception e) {
			e.printStackTrace();
			if(tx!=null) {
				tx.rollback();
			}
			
	}
		if(row>0) return "Class added Succesfully";
		
		else return "Class adding Failed ";
	}


}
