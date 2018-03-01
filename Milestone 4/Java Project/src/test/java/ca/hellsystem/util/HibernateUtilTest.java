package ca.hellsystem.util;

import org.hibernate.Session;
import org.junit.Ignore;
import org.junit.Test;

import ca.hellsystem.util.HibernateUtil;

public class HibernateUtilTest {
	@Test
	@Ignore
	public void conectar(){
		Session session = HibernateUtil.GetSessionFactory().openSession();
		session.close();
		HibernateUtil.GetSessionFactory().close();
	}
}
