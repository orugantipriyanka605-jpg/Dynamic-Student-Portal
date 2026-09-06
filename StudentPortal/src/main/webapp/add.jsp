<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Add Student</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin-top: 50px;
        }

        .container {
            width: 450px;
            margin: auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
        }

        h2 {
            text-align: center;
        }

        label {
            display: block;
            margin-top: 12px;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            margin-top: 20px;
            background-color: #333;
            color: white;
            border: none;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #555;
        }
    </style>
</head>

<body>

<div class="container">

    <h2>Add Student</h2>

    <form method="post" action="process.jsp">

        <label>Student Name:</label>
        <input type="text" name="name" required>

        <label>Email:</label>
        <input type="email" name="email" required>

        <label>Course:</label>
        <input type="text" name="course" required>

        <label>Grade:</label>
        <input type="text" name="grade" required>

        <label>Attendance:</label>
        <input type="number" name="attendance" min="0" max="100" required>

        <input type="submit" value="Add Student">

    </form>

</div>

</body>
</html>