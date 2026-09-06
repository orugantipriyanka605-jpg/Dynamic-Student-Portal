<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Dynamic Student Portal</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        .header {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 25px;
        }

        .header h1 {
            margin: 0;
        }

        .header p {
            margin-top: 8px;
        }

        .container {
            width: 80%;
            margin: 40px auto;
        }

        .cards {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 25px;
        }

        .card {
            background-color: white;
            padding: 30px;
            text-align: center;
            border-radius: 10px;
        }

        .card h2 {
            margin-bottom: 10px;
        }

        .card p {
            color: #666;
        }

        .button {
            display: inline-block;
            padding: 12px 25px;
            background-color: #333;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 10px;
        }

        .button:hover {
            background-color: #555;
        }

        .footer {
            text-align: center;
            margin-top: 40px;
            color: #666;
        }
    </style>
</head>

<body>

<div class="header">
    <h1>Dynamic Student Portal</h1>
    <p>Student Information Management System</p>
</div>

<div class="container">

    <div class="cards">

        <div class="card">
            <h2>➕ Add Student</h2>
            <p>Add new student information</p>
            <a href="add.jsp" class="button">Add Student</a>
        </div>

        <div class="card">
            <h2>🔍 Search Student</h2>
            <p>Search student details using ID</p>
            <a href="search.jsp" class="button">Search Student</a>
        </div>

        <div class="card">
            <h2>✏️ Update Student</h2>
            <p>Update existing student information</p>
            <a href="update.jsp" class="button">Update Student</a>
        </div>

        <div class="card">
            <h2>🗑️ Delete Student</h2>
            <p>Delete student information</p>
            <a href="delete.jsp" class="button">Delete Student</a>
        </div>

    </div>

    <div class="footer">
        <p>Dynamic Student Portal | JDBC + MySQL</p>
    </div>

</div>

</body>
</html>


