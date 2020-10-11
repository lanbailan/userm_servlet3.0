<%@ page import="com.cs.entity.User" %><%--
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
        function ba() {
            history.back();
        }
    </script>
</head>
<body>
    <%
        User ui= (User) request.getAttribute("us");
    %>
    <form action="dologin.jsp" method="post">
        <table border="1px" align="center" width="200px">
            <tr>
                <td>用户ID</td>
                <td><%=ui.getId()%></td>
            </tr>
            <tr>
                <td>用户名</td>
                <td><%=ui.getUsername()%></td>
            </tr>
            <tr>
                <td>用户密码</td>
                <td><%=ui.getPassword()%></td>
            </tr>
            <tr>
                <td>用户性别</td>
                <td><%=ui.getSex()%></td>
            </tr>
            <tr>
                <td>用户年龄</td>
                <td><%=ui.getBornDate()%></td>
            </tr>
            <tr>
                <td>用户邮箱</td>
                <td><%=ui.getUserpic()%></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="button" value="返回" onclick="ba()">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
