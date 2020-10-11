package com.cs.servlet;

import com.cs.entity.User;
import com.cs.service.impl.UserServiceImpl;
import com.cs.util.PageSupport;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserServlet",urlPatterns = {"/UserServlet"})
public class UserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        UserServiceImpl usd=new UserServiceImpl();
        PageSupport ps = new PageSupport();
        String id = request.getParameter("id");
        if (id==null||id==""){
            id="1";
        }
        int i = Integer.parseInt(id);
        ps.setPageSize(3);
        ps.setCurrentPageNo(i);
        String comm=request.getParameter("comm");
        try {
            User us=usd.findByidUser(i);

            if (comm.equals("list")) {
                ps.setTotalCount(usd.findByCountUser());
                List<User> list = null;
                list = usd.findByPageUserInfo(ps.getCurrentPageNo(), ps.getPageSize());
                if (list.size() > 0 && list != null) {
//        request.getRequestDispatcher("query1.jsp").forward(request,response);
                    request.getSession().setAttribute("list", list);
                    request.getSession().setAttribute("ps", ps);
                    response.sendRedirect("list.jsp");
                }
            }

            if (comm.equals("query")){
                if (us != null) {
                    //页面的跳转
                    //转发和重向定
                    //response.sendRedirect("success.jsp");//重定向
                    request.setAttribute("us", us);
                    request.getRequestDispatcher("query.jsp").forward(request, response);

                }
            }
            if (comm.equals("update")){
                if (us != null) {
                    request.setAttribute("us", us);
                    request.getRequestDispatcher("update.jsp").forward(request, response);

                }
            }
            if (comm.equals("修改")){
                UserServiceImpl usi= new UserServiceImpl();

                String name = request.getParameter("username");
                String pass=request.getParameter("userpass");
                User uss=new User();;
                uss.setId(i);
                uss.setUsername(name);
                uss.setPassword(pass);
                if(usi.update(uss)>0){
                    //页面的跳转
                    //转发和重向定
                    response.sendRedirect("index.jsp");//重定向
                    //        request.getRequestDispatcher("success.jsp").forward(request,response);
                }
            }

            if (comm.equals("del")){
                if(usd.del(i)>0){
                    //页面的跳转
                    //转发和重向定
                    response.sendRedirect("index.jsp");//重定向
//        request.getRequestDispatcher("success.jsp").forward(request,response);
                }
            }
            if (comm.equals("add")){

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
