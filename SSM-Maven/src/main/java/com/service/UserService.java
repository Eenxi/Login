package com.service;

import com.pojo.User;

import java.util.List;

public interface UserService {
    public Integer reg(User user);
    public User login(String name,String pwd);
}
