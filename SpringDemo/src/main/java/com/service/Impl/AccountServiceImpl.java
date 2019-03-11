package com.service.Impl;

import com.dao.AccountDAO;
import com.model.Account;
import com.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AccountServiceImpl implements AccountService {
    @Autowired
    AccountDAO accountDAO;
    @Override
    public boolean addAccount(Account account) {
        return accountDAO.addAccount(account);
    }

    @Override
    public Account findAccount(String id) {
        return accountDAO.findAccount(id);
    }

    @Override
    public boolean updateInfoAccount(Account account) {
        return accountDAO.updateInfoAccount(account);
    }
}
