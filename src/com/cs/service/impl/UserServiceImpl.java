package com.cs.service.impl;

import com.cs.dao.impl.UserDaoImpl;
import com.cs.entity.User;
import com.cs.service.UserService;

import java.util.List;

public class UserServiceImpl implements UserService {

    private UserDaoImpl udi=new UserDaoImpl();
    @Override
    public int findByCountUser() throws Exception {
        return udi.findByCountUser();
    }

    @Override
    public List<User> findByPageUserInfo(int pageNo, int pageSize) throws Exception {
        return udi.findByPageUserInfo(pageNo,pageSize);
    }

    @Override
    public User findByidUser(int id) throws Exception {
        return udi.findByidUser(id);
    }

    @Override
    public int update(User ui) throws Exception {
        return udi.update(ui);
    }

    @Override
    public int del(int id) throws Exception {
        return udi.del(id);
    }
}
