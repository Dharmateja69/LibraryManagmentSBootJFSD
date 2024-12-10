<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
    <!-- Add Font Awesome CDN for icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            min-height: 100vh;
            margin: 0;
        }

        /* Sidebar Styles */
        .sidebar {
            width: 250px;
            background-color: #2C3E50;
            padding: 20px;
            color: white;
            position: fixed;
            height: 100%;
        }

        .sidebar h3 {
            color: #fff;
            text-align: center;
        }

        .sidebar a {
            color: #ecf0f1;
            text-decoration: none;
            display: block;
            margin: 10px 0;
        }

        .sidebar a:hover {
            color: #1abc9c;
        }

        /* Main Content Styles */
        .content {
            margin-left: 250px;
            padding: 20px;
            width: 100%;
        }

        .form-container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
            margin-top: 50px;
            margin-left: auto;
            margin-right: auto;
        }

        .form-container h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
            font-size: 2rem;
            font-weight: 600;
        }

        .input-group {
            margin-bottom: 20px;
        }

        .input-group label {
            font-size: 1rem;
            color: #555;
            display: block;
            margin-bottom: 8px;
        }

        .input-group input {
            width: 100%;
            padding: 10px;
            border: 2px solid #ccc;
            border-radius: 5px;
            font-size: 1rem;
            outline: none;
            transition: border-color 0.3s;
        }

        .input-group input:focus {
            border-color: #005f73;
        }

        .btn {
            width: 100%;
            padding: 10px;
            background-color: #005f73;
            color: white;
            font-size: 1.1rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #008c9e;
        }

        .form-footer {
            text-align: center;
            margin-top: 20px;
        }

        .form-footer a {
            text-decoration: none;
            color: #005f73;
            font-size: 1rem;
        }

        .form-footer a:hover {
            color: #008c9e;
        }

        /* Success Message Styling */
        .success-message {
            padding: 15px;
            background-color: #28a745;
            color: white;
            margin-bottom: 20px;
            text-align: center;
            border-radius: 5px;
        }

    </style>
</head>
<body>

<!-- Include Sidebar -->
<jsp:include page="sidebar.jsp" />

<!-- Main Content Area (Registration Form) -->
<div class="content">
    <div class="form-container">
        <h2>User Registration</h2>

        <!-- Success Message Display -->
        <c:if test="${not empty successMessage}">
            <div class="success-message">
                ${successMessage}
            </div>
        </c:if>

        <!-- User Registration Form -->
        <form action="<%= request.getContextPath() %>/add" method="POST">
            <div class="input-group">
                <label for="id">User ID</label>
                <input type="number" id="id" name="id" required placeholder="Enter User ID">
            </div>
            <div class="input-group">
                <label for="name">User Name</label>
                <input type="text" id="name" name="name" required placeholder="Enter User Name">
            </div>
            <button type="submit" class="btn">Register</button>
        </form>
        <div class="form-footer">
            <p>Already have an account? <a href="<%= request.getContextPath() %>/login">Login Here</a></p>
        </div>
    </div>
</div>

</body>
</html>
