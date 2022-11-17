package com.dao;

import org.apache.ibatis.annotations.Param;

import com.pojo.User;

public interface UserDao {
    public Integer reg(User user);
    public User login(@Param("name") String name,@Param("pwd") String pwd);
    //根据一个参数查询，参数>=2，把参数封装成map集合
}