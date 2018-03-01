package ca.hellsystem.dao;

import org.apache.shiro.crypto.hash.SimpleHash;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import ca.hellsystem.domain.User;
import ca.hellsystem.util.HibernateUtil;

public class UserDAO extends GenericDAO<User> {

	public User autenticar(String username, String password) {
		Session session = HibernateUtil.GetSessionFactory().openSession();
		try {
			Criteria query = session.createCriteria(User.class);
			query.add(Restrictions.eq("username", username));
			SimpleHash hash = new SimpleHash("md5", password);
			query.add(Restrictions.eq("password", hash.toHex()));		
			User result = (User) query.uniqueResult();
			return result;
		} catch (RuntimeException error) {
			throw error;
		} finally {
			session.close();
		}
	}
}
