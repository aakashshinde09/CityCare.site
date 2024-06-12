package com.dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import com.entity.Doctor;

public class DoctorDao {

    private EntityManager getEntityManager() {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("akash");
        return emf.createEntityManager();
    }

    public boolean addDoctor(Doctor doctor) {
        EntityManager entityManager = getEntityManager();
        EntityTransaction transaction = entityManager.getTransaction();

        try {
            transaction.begin();
            entityManager.persist(doctor);
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

    public List<Doctor> getAllDoctors() {
        EntityManager entityManager = getEntityManager();

        try {
            TypedQuery<Doctor> query = entityManager.createQuery("SELECT d FROM Doctor d", Doctor.class);
            return query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            entityManager.close();
        }
    }

    public Doctor getDoctorById(int id) {
        EntityManager entityManager = getEntityManager();

        try {
            return entityManager.find(Doctor.class, id);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            entityManager.close();
        }
    }

    public boolean updateDoctor(Doctor doctor) {
        EntityManager entityManager = getEntityManager();
        EntityTransaction transaction = entityManager.getTransaction();

        try {
            transaction.begin();
            Doctor managedDoctor = entityManager.find(Doctor.class, doctor.getDoctor_Id());
            if (managedDoctor != null) {
                managedDoctor.setDoctor_name(doctor.getDoctor_name());
                managedDoctor.setDoctor_dob(doctor.getDoctor_dob());
                managedDoctor.setDoctor_qualification(doctor.getDoctor_qualification());
                managedDoctor.setDoctor_specialist(doctor.getDoctor_specialist());
                managedDoctor.setDoctor_email(doctor.getDoctor_email());
                managedDoctor.setDoctor_mobile(doctor.getDoctor_mobile());
                managedDoctor.setDoctor_password(doctor.getDoctor_password());
                entityManager.merge(managedDoctor);
                transaction.commit();
                return true;
            } else {
                transaction.rollback();
                System.out.println("Doctor not found with ID: " + doctor.getDoctor_Id());
                return false;
            }
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


    public boolean deleteDoctor(int id) {
        EntityManager entityManager = getEntityManager();
        EntityTransaction transaction = entityManager.getTransaction();

        try {
            transaction.begin();
            Doctor doctor = entityManager.find(Doctor.class, id);
            if (doctor != null) {
                entityManager.remove(doctor);
                transaction.commit();
                return true;
            } else {
                transaction.rollback();
                return false;
            }
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

    public Doctor login(String email, String password) {
        EntityManager entityManager = getEntityManager();

        try {
            TypedQuery<Doctor> query = entityManager.createQuery(
                "SELECT d FROM Doctor d WHERE d.doctor_email = :doctor_email AND d.doctor_password = :doctor_password", Doctor.class);
            query.setParameter("doctor_email", email);
            query.setParameter("doctor_password", password);

            List<Doctor> resultList = query.getResultList();
            return resultList.isEmpty() ? null : resultList.get(0);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            entityManager.close();
        }
    }
}
