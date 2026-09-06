<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>Update Student</title>
</head>

<body>

<h2>Update Student</h2>

<form method="post" action="update.jsp">

    <label>Student ID:</label>
    <input type="number" name="student_id" required>
    <br><br>

    <label>Name:</label>
    <input type="text" name="name" required>
    <br><br>

    <label>Email:</label>
    <input type="email" name="email" required>
    <br><br>

    <label>Course:</label>
    <input type="text" name="course" required>
    <br><br>

    <label>Grade:</label>
    <input type="text" name="grade" required>
    <br><br>

    <label>Attendance:</label>
    <input type="number" name="attendance" required>
    <br><br>

    <input type="submit" value="Update Student">

</form>

<hr>

<%
    if (request.getMethod().equalsIgnoreCase("POST")) {

        int studentId = Integer.parseInt(request.getParameter("student_id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String course = request.getParameter("course");
        String grade = request.getParameter("grade");
        int attendance = Integer.parseInt(request.getParameter("attendance"));

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/student_db",
                "root",
                "priyanka@07"
            );

            PreparedStatement ps = con.prepareStatement(
                "UPDATE students SET name=?, email=?, course=?, grade=?, attendance=? WHERE student_id=?"
            );

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, course);
            ps.setString(4, grade);
            ps.setInt(5, attendance);
            ps.setInt(6, studentId);

            int result = ps.executeUpdate();

            if (result > 0) {
%>

                <h3>Student Updated Successfully! ✅</h3>

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