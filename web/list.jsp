<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/10/10
  Time: 14:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="" method="post">
    <table border="1px" align="center">
<%--        <tr>--%>
<%--            <td width="100px">总页数：</td>--%>
<%--            <td width="100ps">${ps.totalPageCount}</td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td width="100px">总信息数：</td>--%>
<%--            <td width="100ps">${ps.totalCount}</td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td width="100px">当前页信息数：</td>--%>
<%--            <td width="100ps">--%>
<%--                <c:if test="${sessionScope.ps.currentPageNo==ps.totalPageCount}">--%>
<%--                    <c:if test="${ps.totalCount%ps.pageSize!=0}">--%>
<%--                        ${(ps.totalCount % ps.pageSize)}--%>
<%--                    </c:if>--%>
<%--                    <c:if test="${ps.totalCount%ps.pageSize==0}">--%>
<%--                        ${ps.pageSize}--%>
<%--                    </c:if>--%>
<%--                </c:if>--%>
<%--                <c:if test="${ps.currentPageNo!=ps.totalPageCount}">--%>
<%--                    ${ps.pageSize}--%>
<%--                </c:if>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td width="100px">当前页数：</td>--%>
<%--            <td width="100ps">${ps.currentPageNo}</td>--%>

<%--        </tr>--%>
        <c:forEach items="${list}" var="ui">
            <tr>
                <td colspan="3">用户信息表</td>
                <td><a href="UserServlet?id=1&comm=add">添加用户信息</a></td>
            </tr>
            <tr>
                <td width="100px">${ui.getId()}</td>
                <td width="100px">${ui.getUsername()}</td>
                <td width="100px">${ui.getPassword()}</td>
                <td width="100px">
                    <a href="UserServlet?id=${ui.getId()}&comm=query">查看</a>&nbsp;&nbsp;
                    <a href="UserServlet?id=${ui.getId()}&comm=update">修改</a>&nbsp;&nbsp;
                    <a href="UserServlet?id=${ui.getId()}&comm=del">删除</a>
                </td>
            </tr>
        </c:forEach>
        <tr>
            <td colspan="4">
                <c:if test="${ps.currentPageNo > 1}">
                    <a href="UserServlet?id=1&comm=list">首页</a>&nbsp;&nbsp;
                    <a href="UserServlet?id=${ps.getCurrentPageNo()-1}&comm=list">上一页</a>&nbsp;&nbsp;
                </c:if>
                <c:if test="${ps.currentPageNo < ps.totalPageCount}">
                    <a href="UserServlet?id=${ps.getCurrentPageNo()+1}&comm=list">下一页</a>&nbsp;&nbsp;
                    <a href="UserServlet?id=${ps.getTotalPageCount()}&comm=list">末页</a>
                </c:if>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
