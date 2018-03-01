package ca.hellsystem.util;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class HibernateContext implements ServletContextListener{

	@Override
	public void contextDestroyed(ServletContextEvent event) {
		HibernateUtil.GetSessionFactory().close();		
	}

	@Override
	public void contextInitialized(ServletContextEvent event) {
		HibernateUtil.GetSessionFactory();	
	}
}
