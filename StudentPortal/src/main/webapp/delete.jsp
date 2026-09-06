<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>Delete Student</title>
</head>

<body>

<h2>Delete Student</h2>

<form method="post" action="delete.jsp">

    <label>Enter Student ID:</label>
    <input type="number" name="student_id" required>

    <input type="submit" value="Delete Student">

</form>

<hr>

<%
    if (request.getMethod().equalsIgnoreCase("POST")) {

        int studentId = Integer.parseInt(
            request.getParameter("student_id")
        );

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/student_db",
                "root",
                "priyanka@07"
            );

            PreparedStatement ps = con.prepareStatement(
                "DELETE FROM students WHERE student_id = ?"
            );

            ps.setInt(1, studentId);

            int result = ps.executeUpdate();

            if (result > 0) {
%>

                <h3>Student Deleted Successfully! ✅</h3>

<%
            } else {
%>

                <h3>Student Not Found! ❌</h3>

<%
            }

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