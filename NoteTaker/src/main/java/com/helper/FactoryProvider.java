package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FactoryProvider {

	public static SessionFactory factory;

	/* -----------Method for getting the factory-------------- */

	public static SessionFactory getFactory() {

		if (factory == null) {
			factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		}
		return factory;
	}
	/* -----------Method for closing the factory-------------- */

	public void closeFactory() {
		if (factory.isOpen()) {
			factory.close();
		}
	}

}
