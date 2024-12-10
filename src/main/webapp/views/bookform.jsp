<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book Form</title>

    <!-- Include some basic styles -->
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            height: 100vh;
        }

        /* Content Area (form area) */
        .content {
            margin-left: 250px; /* Adjust this margin based on your sidebar width */
            padding: 20px;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

        /* Form Styles */
        form {
            width: 100%;
            max-width: 600px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            background-color: #f9f9f9;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            font-size: 16px;
            margin-bottom: 8px;
            display: block;
        }

        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
        }

        button:hover {
            background-color: #45a049;
        }

    </style>
</head>
<body>

    <!-- Include the existing sidebar -->
    <jsp:include page="sidebar.jsp"/>

    <!-- Main Content Area (Form) -->
    <div class="content">
        <h2>Book Form</h2>

        <form action="${pageContext.request.contextPath}/booksave" method="post">
            <!-- Book ID -->
            <label for="id">ID:</label>
            <input type="number" id="id" name="id" value="${book.id}" required>
            <br><br>

            <!-- Book Title -->
            <label for="title">Title:</label>
            <input type="text" id="title" name="title" value="${book.title}" required>
            <br><br>

            <!-- Book Author -->
            <label for="author">Author:</label>
            <input type="text" id="author" name="author" value="${book.author}" required>
            <br><br>

            <!-- Borrowed (default is false) -->
            <input type="hidden" id="borrowed" name="borrowed" value="false">

            <!-- User ID (hidden field to store the user ID) -->
            <input type="hidden" id="user_id" name="user_id" value="1"> <!-- Assuming user_id is 1 for demo -->

            <!-- Submit button -->
            <button type="submit">Save Book</button>
        </form>

        <!-- Success Message Display -->
        <c:if test="${not empty successMessage}">
            <div class="alert alert-success">
                <p>${successMessage}</p>
            </div>
        </c:if>
    </div>

</body>
</html>
