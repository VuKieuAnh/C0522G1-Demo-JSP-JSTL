<%--
  Created by IntelliJ IDEA.
  User: kieuanh
  Date: 18/08/2022
  Time: 10:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%
    float rate = Float.parseFloat(request.getParameter("rate"));
    float usd = Float.parseFloat(request.getParameter("usd"));
    float vnd = rate*usd;
%>
<body>
<h1>Rate <%=rate%></h1>
<h1>USD <%=usd%></h1>
<h1>VND <%=vnd%></h1>

</body>
</html>
