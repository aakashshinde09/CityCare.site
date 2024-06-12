package com.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import com.entity.Specialist;

public class SpecialistDAO {

    private static final EntityManagerFactory emf = Persistence.createEntityManagerFactory("akash");

    private EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public boolean addSpecialist(Specialist specialist) {
        boolean f = false;
        EntityManager entityManager = getEntityManager();
        EntityTransaction transaction = entityManager.getTransaction();
        try {
            transaction.begin();
            entityManager.persist(specialist);
            transaction.commit();
            f = true;
        } catch (Exception e) {
            if (transaction.isActive()) {
                transaction.rollback();
            }
            e.printStackTrace(); // Log the exception
        } finally {
            entityManager.close();
        }
        return f;
    }

    public List<Specialist> getAllSpecialists() {
        EntityManager entityManager = getEntityManager();
        try {
            TypedQuery<Specialist> query = entityManager.createQuery("SELECT s FROM Specialist s", Specialist.class);
            return query.getResultList();
        } catch (Exception e) {
            e.printStackTrace(); // Log the exception
            return null;
        } finally {
            entityManager.close();
        }
    }
}
