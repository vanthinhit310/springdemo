package com.service;

import com.model.Account;

public interface AccountService {
    public  boolean addAccount(Account account);
    public Account findAccount(String id);
    public boolean updateInfoAccount(Account account);
}
