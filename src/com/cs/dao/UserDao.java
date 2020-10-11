package com.cs.dao;

import com.cs.entity.User;

import java.util.List;

public interface UserDao {

    //查询数据的总记录数
    public int findByCountUser()throws Exception;

    //分页方法
    public List<User> findByPageUserInfo(int pageNo, int pageSize) throws Exception;
    //id查找
    public User findByidUser(int id)throws Exception;
    //修改
    public int update(User ui)throws Exception;

    public int del(int id)throws Exception;

}
