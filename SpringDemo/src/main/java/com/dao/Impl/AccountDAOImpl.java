package com.dao.Impl;

import com.dao.AccountDAO;
import com.model.Account;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Repository
public class AccountDAOImpl implements AccountDAO {
    @Autowired
    SessionFactory sessionFactory;

    @Override
    public boolean addAccount(Account account) {
        Session currentSession = sessionFactory.getCurrentSession();
        try {
            currentSession.save(account);
        } catch (HibernateException e) {
            System.out.println(e.getMessage());
            return false;
        }
        return true;
    }

    @Override
    public Account findAccount(String id) {
        Session currentSession = sessionFactory.getCurrentSession();
        Account account = (Account) currentSession.get(Account.class, id);
        return account;
    }

    @Override
    public boolean updateInfoAccount(Account account) {
        Session currentSession = sessionFactory.getCurrentSession();
        try {
            currentSession.saveOrUpdate(account);
        } catch (HibernateException e) {
            System.out.println(e.getMessage());
            return false;
        }
        return true;
    }
}
