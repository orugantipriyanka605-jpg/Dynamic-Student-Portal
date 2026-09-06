<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>Student Registration</title>
</head>

<body>

<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String course = request.getParameter("course");
    String grade = request.getParameter("grade");

    int attendance = Integer.parseInt(
        request.getParameter("attendance")
    );

    try {

        Class.forName("com.mysql.cj.jdbc.Driver");

        Connection con = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/student_db",
            "root",
            "priyanka@07"
        );

        PreparedStatement ps = con.prepareStatement(
            "INSERT INTO students (name, email, course, grade, attendance) VALUES (?, ?, ?, ?, ?)"
        );

        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, course);
        ps.setString(4, grade);
        ps.setInt(5, attendance);

        int result = ps.executeUpdate();

        if (result>0) {
%>

            <h2>Student Added Successfully! ✅</h2>

            <p><b>Name:</b> <%= name %></p>
            <p><b>Email:</b> <%= email %></p>
            <p><b>Course:</b> <%= course %></p>
            <p><b>Grade:</b> <%= grade %></p>
            <p><b>Attendance:</b> <%= attendance %>%</p>

<%
        } else {
%>

            <h2>Failed to Add Student! ❌</h2>

<%
        }

        ps.close();
        con.close();

    } catch (Exception e) {
%>

        <h2>Error: <%= e.getMessage() %></h2>

<%
    }
%>

</body>
</html>
       

