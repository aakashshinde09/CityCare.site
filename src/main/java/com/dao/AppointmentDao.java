package com.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.entity.Appointment;

public class AppointmentDao {

	private EntityManager getEntityManager() {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("akash");
        return emf.createEntityManager();
    }
	
	public boolean addAppointment(Appointment appointment) {
        EntityManager entityManager = getEntityManager();
        EntityTransaction transaction = entityManager.getTransaction();

        try {
            transaction.begin();
            entityManager.persist(appointment);
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
}
