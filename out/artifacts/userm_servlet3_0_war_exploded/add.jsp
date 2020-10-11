
<%@ page import="java.util.List" %>

<%@ page import="com.cs.dao.impl.UserDaoImpl" %>
<%@ page import="com.cs.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/10/6
  Time: 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <from action="doadd.jsp" method="post">
  <table border="1px">
    <%
      UserDaoImpl udi=new UserDaoImpl();
      User u=new User();
    %>
     <tr><td>用户名</td><td><input type="text" value="<%=u.getUsername()%>"></td></tr>
      <tr><td>密码</td><td><input type="text" value="<%=u.getPassword()%>"></td></tr>
      <tr><td>性别</td><td><input type="text" value="<%=u.getSex()%>"></td></tr>
      <tr><td>年龄</td><td><input type="text" value="<%=u.getBornDate()%>"></td></tr>
      <tr><td>邮箱</td><td><input type="text" value="<%=u.getUserpic()%>"></td></tr>
      <tr><td colspan="2"><input type="submit" value="添加"></td></tr>
  </table>
  </from>
  </body>
</html>