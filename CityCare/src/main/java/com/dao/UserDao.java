package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import com.entity.User;

public class UserDao {

	private EntityManager getEntityManager() {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("akash");
        return emf.createEntityManager();
    }
	
	public boolean UserRegister(User u) {
		 EntityManager entityManager = getEntityManager();
	        EntityTransaction transaction = entityManager.getTransaction();

	        try {
	            transaction.begin();
	            entityManager.persist(u);
	            transaction.commit();
	            return true;
	        } catch (Exception e) {
	            e.printStackTrace();
	            if (transaction.isActive()) {
	                transaction.rollback();
	            }
	            return false;
	        } finally {
	            entityManager.close();
	        }
	}
	
	
	public User login(String email, String password) {
        EntityManager entityManager = getEntityManager();

        try {
            TypedQuery<User> query = entityManager.createQuery(
                "SELECT u FROM User u WHERE u.user_email = :user_email AND u.user_password = :user_password", User.class);
            query.setParameter("user_email", email);
            query.setParameter("user_password", password);

            List<User> resultList = query.getResultList();
            return resultList.isEmpty() ? null : resultList.get(0);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            entityManager.close();
        }
    }
}
