<%@ page import="java.util.List" %>
<%@ page import="com.cs.entity.User" %>
<%@ page import="com.cs.service.impl.UserServiceImpl" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/10/7
  Time: 9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript">
        // window.onload=function () {
            function aa(comm) {
                location.href = '/UserServlet?comm=' + comm + "&username=($('#username').val())&userpass=($('#userpass').val())"
            }
        // }
    </script>
</head>
<body>
    <%
        User ui= (User) request.getAttribute("us");

    %>
    <form action="/UserServlet" method="post">
        <table border="1px" align="center" >
                <td colspan="2"><input type="hidden" name="userid" value="<%=ui.getId()%>"></td>
            <tr>
                <td width="200px">用户名</td>
                <td width="200px"><input type="text" name="username" value="<%=ui.getUsername()%>"></td>
            </tr>
            <tr>
                <td width="200px">用户密码</td>
                <td width="200px"><input type="text" name="userpass" value="<%=ui.getPassword()%>"></td>
            </tr>
            <tr>
                <td width="200px">用户性别</td>
                <td width="200px"><%=ui.getSex()%></td>
            </tr>
            <tr>
                <td width="200px">用户生日</td>
                <td width="200px"><%=ui.getBornDate()%></td>
            </tr>
            <tr>
                <td width="200px">用户邮箱</td>
                <td width="200px"><%=ui.getUserpic()%></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" name="comm" value="修改">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
