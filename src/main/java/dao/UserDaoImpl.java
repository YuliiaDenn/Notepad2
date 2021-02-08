package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import entity.User;
import util.HibernateUtil;

public class UserDaoImpl implements UserDao {

	private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

	@Override
	public void add(User user) {

		Session session = sessionFactory.getCurrentSession();
		Transaction transaction = session.beginTransaction();
		session.save(user);
		transaction.commit();
		session.close();
	}

	@Override
	public void update(User user) {

		Session session = sessionFactory.getCurrentSession();
		Transaction transaction = session.beginTransaction();
		session.merge(user);
		transaction.commit();
		session.close();
	}

	@Override
	public void delete(int id) {

		Session session = sessionFactory.getCurrentSession();
		Transaction transaction = session.beginTransaction();
		session.delete(id);
		transaction.commit();
		session.close();
	}

	@Override
	public User getById(int id) {

		Session session = sessionFactory.getCurrentSession();
		Transaction transaction = session.beginTransaction();
		User user = session.get(User.class, id);
		transaction.commit();
		session.close();
		return user;
	}

	@Override
	public List<User> getAll() {

		Session session = sessionFactory.getCurrentSession();
		Transaction transaction = session.beginTransaction();
		List<User> users = session.createQuery("from User", User.class).getResultList();
		transaction.commit();
		session.close();
		return users;
	}

	@Override
	public List<User> getByName(String name) {

		Session session = sessionFactory.getCurrentSession();
		Transaction transaction = session.beginTransaction();
		List<User> users = session.createQuery("from User where name = '" + name + "'", User.class).getResultList();
		transaction.commit();
		session.close();
		return users;
	}

	@Override
	public List<User> getBySurname(String surname) {

		Session session = sessionFactory.getCurrentSession();
		Transaction transaction = session.beginTransaction();
		List<User> users = session.createQuery("from User where surname ='" + surname + "'", User.class)
				.getResultList();
		transaction.commit();
		session.close();
		return users;
	}

}
