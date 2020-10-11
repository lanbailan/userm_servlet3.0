package com.cs.dao.impl;

import com.cs.basedao.BaseDao;
import com.cs.dao.UserDao;
import com.cs.entity.User;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImpl extends BaseDao implements UserDao {
    @Override
    public int findByCountUser() throws Exception {
        int index=0;
        String sql="select Count(*) from user";
        ResultSet rs=exeuQuery(sql,null);
        while(rs.next()){
            index=rs.getInt(1);
        }
        getClose();
        return index;
    }

    @Override
    public List<User> findByPageUserInfo(int pageNo, int pageSize) throws Exception {
        List<User> list=new ArrayList<User>();
        String sql="select * from user limit ?,?";
        Object obj[]={(pageNo-1)*pageSize,pageSize};
        ResultSet rs=exeuQuery(sql,obj);
        while(rs.next()){
            User us=new User();
            us.setId(rs.getInt(1));
            us.setUsername(rs.getString(2));
            us.setPassword(rs.getString(3));
            us.setSex(rs.getString(4));
            us.setBornDate(rs.getTimestamp(5));
            us.setUserpic(rs.getString(6));
            list.add(us);
        }
        getClose();
        return list;
    }

    @Override
    public User findByidUser(int id) throws Exception {
        User us=null;
        String sql="select * from user where id=?";
        Object[] obj={id};
        ResultSet rs=exeuQuery(sql,obj);
        while (rs.next()){
            us=new User();
            us.setId(rs.getInt(1));
            us.setUsername(rs.getString(2));
            us.setPassword(rs.getString(3));
            us.setSex(rs.getString(4));
            us.setBornDate(rs.getDate(5));
            us.setUserpic(rs.getString(6));
        }
        getClose();
        return us;
    }

    @Override
    public int update(User ui) throws Exception {
        int index=-1;
        String sql="update user set userName=?,Password=? where id=?";
        UserDaoImpl ud=new UserDaoImpl();
        Object[] obj={ui.getUsername(),ui.getPassword(),ui.getId()};
        index=ud.exeuUpdate(sql,obj);
        return index;
    }

    @Override
    public int del(int id) throws Exception {
        int index=-1;
        String sql="delete from user where id=?";
        Object[] obj={id};
        UserDaoImpl udi=new UserDaoImpl();
        index=udi.exeuUpdate(sql,obj);
        return index;
    }
}
