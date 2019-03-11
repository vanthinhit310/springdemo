package com.dao;

import com.model.Account;

public interface AccountDAO {
    public  boolean addAccount(Account account);
    public Account findAccount(String id);
    public boolean updateInfoAccount(Account account);
}
