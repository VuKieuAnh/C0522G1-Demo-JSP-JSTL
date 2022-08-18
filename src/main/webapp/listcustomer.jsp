<%@ page import="com.example.democ0522g1jsp.model.Customer" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: kieuanh
  Date: 18/08/2022
  Time: 10:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%
    List<Customer> customerList = new ArrayList<>();
    customerList.add(new Customer(1, "Quyet", "BN"));
    customerList.add(new Customer(2, "Hieu", "LC"));
    customerList.add(new Customer(3, "Hoang", "HN"));
    request.setAttribute("ds", customerList);
%>
<body>
<table>
    <tr>
        <td>id</td>
        <td>name</td>
        <td>address</td>
    </tr>
    <c:forEach var="cus" items="${ds}">
        <tr>
            <td>${cus.id}</td>
            <td>${cus.name}</td>
            <td>${cus.address}</td>
        </tr>
    </c:forEach>

</table>

</body>
</html>
