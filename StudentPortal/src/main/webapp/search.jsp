<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>Student Search</title>
</head>

<body>

<h2>Search Student</h2>

<form method="get" action="search.jsp">

    <label>Enter Student ID:</label>
    <input type="number" name="student_id" required>

    <input type="submit" value="Search">

</form>

<hr>

<%
    String studentId = request.getParameter("student_id");

    if (studentId != null && !studentId.isEmpty()) {

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/student_db",
                "root",
                "priyanka@07"
            );

            PreparedStatement ps = con.prepareStatement(
                "SELECT * FROM students WHERE student_id = ?"
            );

            ps.setInt(1, Integer.parseInt(studentId));

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
%>

<h3>Student Details</h3>

<table border="1" cellpadding="10">

    <tr>
        <th>Student ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Course</th>
        <th>Grade</th>
        <th>Attendance</th>
    </tr>

    <tr>
        <td><%= rs.getInt("student_id") %></td>
        <td><%= rs.getString("name") %></td>
        <td><%= rs.getString("email") %></td>
        <td><%= rs.getString("course") %></td>
        <td><%= rs.getString("grade") %></td>
        <td><%= rs.getInt("attendance") %>%</td>
    </tr>

</table>

<%
            } else {
%>

<h3>Student Not Found!</h3>

<%
            }

            rs.close();
            ps.close();
            con.close();

        } catch (Exception e) {
%>

<h3>Error: <%= e.getMessage() %></h3>

<%
        }
    }
%>

</body>
</html>
