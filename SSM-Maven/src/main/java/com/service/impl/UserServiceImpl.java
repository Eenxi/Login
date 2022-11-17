package com.service.impl;

import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.UserDao;
import com.pojo.User;
@Service
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    @Override
    public Integer reg(User user) {
        // TODO Auto-generated method stub
        return userDao.reg(user);
    }
    @Override
    public User login(String name, String pwd) {
        // TODO Auto-generated method stub
        return userDao.login(name, pwd);
    }

}
