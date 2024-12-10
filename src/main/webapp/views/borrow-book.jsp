<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Borrow Book</title>
    <script>
        function showAlert() {
            alert("Book borrowed successfully!");
        }
    </script>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }

        #sidebar {
            width: 220px;
            float: left;
            height: 100%;
            background-color: #f4f4f4;
            padding: 15px;
            box-sizing: border-box;
        }

        #content {
            margin-left: 240px;
            padding: 20px;
        }

        form div {
            margin-bottom: 15px;
        }

        input[type="text"] {
            padding: 8px;
            width: 100%;
            box-sizing: border-box;
        }

        button {
            padding: 10px 15px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <jsp:include page="sidebar.jsp" />

    <div id="content">
        <h2>Borrow a Book</h2>

        <!-- Form to borrow the book -->
        <form action="<c:url value='/borrow' />" method="post" onsubmit="showAlert()">
            <div>
                <label for="bookid">Book ID:</label>
                <input type="text" id="bookid" name="bookid" required>
            </div>
            <div>
                <label for="userid">User ID:</label>
                <input type="text" id="userid" name="userid" required>
            </div>
            <button type="submit">Borrow Book</button>
        </form>
    </div>
</body>
</html>
