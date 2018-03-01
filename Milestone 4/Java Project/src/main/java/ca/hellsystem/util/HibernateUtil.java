package ca.hellsystem.util;

import java.sql.Connection;
import java.sql.SQLException;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.jdbc.ReturningWork;
import org.hibernate.service.ServiceRegistry;

public class HibernateUtil {
	private static SessionFactory sessionFactory = CreateSessionFactory();

	public static SessionFactory GetSessionFactory() {
		return sessionFactory;
	}
	
	public static Connection getConnection(){	
		Session session = sessionFactory.openSession();
		Connection connection = session.doReturningWork(new ReturningWork<Connection>() {
			@Override
			public Connection execute(Connection conn) throws SQLException {
				return conn;
			}
		});
		return connection;
	}
	
	private static SessionFactory CreateSessionFactory() {
		try {
			Configuration config = new Configuration().configure();
			ServiceRegistry registry = new StandardServiceRegistryBuilder().applySettings(config.getProperties()).build();
			SessionFactory factory = config.buildSessionFactory(registry);
			return factory;
		} catch(HibernateException exception){
		     exception.printStackTrace();
		}
		return null;
	}
}
