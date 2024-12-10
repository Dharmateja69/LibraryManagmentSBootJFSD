<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index Page</title>
    <style>
        /* Optional: Add styles to fix the layout */
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }
        .content {
            margin-left: 250px; /* Adjust based on sidebar width */
            padding: 20px;
            flex: 1;
            background: #ffffff;
        }
    </style>
</head>
<body>
    <!-- Including the sidebar.jsp content -->
    <%@ include file="sidebar.jsp" %>
    
    <!-- Main content -->
    <div class="content">
        <h1>Welcome to the Home Page</h1>
        <h2>Main Content</h2>
        <p>This is the main content area of the page.</p>
    </div>
</body>
</html>
