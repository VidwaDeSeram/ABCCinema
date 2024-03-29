package com.abccinema.dao;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.List;
import java.util.Map;
import java.util.Set;

public abstract class JpaDAO<E> {
  protected   EntityManager entityManager;

    public JpaDAO(EntityManager entityManager) {
        super();
        this.entityManager = entityManager;
    }

    public E create(E entity)
    {
        entityManager.getTransaction().begin();
        entityManager.persist(entity);
        entityManager.flush();
        entityManager.refresh(entity);
        entityManager.getTransaction().commit();

        return entity;
    }
    public  E update (E entity)
    {
        entityManager.getTransaction().begin();
        entity = entityManager.merge(entity);
        entityManager.getTransaction().commit();
        return entity;
    }

    public  E find (Class<E> type,Object id)
    {
       E entity = entityManager.find(type, id);
       if (entity != null)
       {
           entityManager.refresh(entity);
       }
       return entity;
    }
    public void delete(Class<E> type,Object id)
    {
        entityManager.getTransaction().begin();
        Object reference = entityManager.getReference(type,id);
        entityManager.remove(reference);
        entityManager.getTransaction().commit();
    }



    public long countWithNamedQuery(String queryName)
    {
        Query query = entityManager.createNamedQuery(queryName);
        return (long) query.getSingleResult();
    }
    public List<E> findWithNamedQuery(String queryName, Map<String, Object> parameters)
    {
        Query query = entityManager.createNamedQuery(queryName);

        Set<Map.Entry<String,Object>>  setParameters = parameters.entrySet();

        for (Map.Entry<String,Object> entry : setParameters)
        {
            query.setParameter(entry.getKey(), entry.getValue());
        }
        return query.getResultList();
    }

    public int getIDByUserName(String queryName,Map<String, Object> parameters)
    {
        Query query = entityManager.createNamedQuery(queryName);
        Set<Map.Entry<String,Object>>  setParameters = parameters.entrySet();
        for (Map.Entry<String,Object> entry : setParameters)
        {
            query.setParameter(entry.getKey(), entry.getValue());
        }
        return (int) query.getSingleResult();
    }















}
