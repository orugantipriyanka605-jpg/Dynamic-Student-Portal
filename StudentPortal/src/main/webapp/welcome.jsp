<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    session.setAttribute("studentName", "Anu");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
</head>

<body>

<h2>Welcome Page</h2>

<p>
    Student Name:
    <%= session.getAttribute("studentName") %>
</p>

</body>
</html>