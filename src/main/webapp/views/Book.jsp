<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book List</title>

    <!-- Include some basic styles -->
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            height: 100vh;
            flex-direction: column;
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
            flex-grow: 1;
        }

        /* Table Styles */
        table {
            width: 80%; /* Adjust width of the table */
            margin: 20px auto;
            border-collapse: collapse;
            border: 1px solid #ccc;
        }

        th, td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ccc;
        }

        th {
            background-color: #f2f2f2;
        }

        /* Button Styles for actions */
        .button {
            padding: 8px 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            text-decoration: none;
            cursor: pointer;
        }

        .button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

    <!-- Include the existing sidebar -->
    <jsp:include page="sidebar.jsp"/>

    <!-- Main Content Area (Table) -->
    <div class="content">
        <h2>Book List</h2>

        <table>
            <thead>
                <tr>
                    <th>ID</th>
                     <th>Title</th>
                    <th>Author</th>
                    
                    <th>Username</th>
                    <th>Date</th>
                </tr>
            </thead>
            <tbody>
                <!-- Iterate over the list of books and display each one -->
                <c:forEach var="book" items="${Booklist}">
                    <tr>
                        <td>${book.id}</td>
                        <td>${book.title}</td>
                        <td>${book.author}</td>
                       
                        <td>${book.username}</td>
                        <td>${book.date}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <!-- Button to add a new book (optional) -->
        <a href="${pageContext.request.contextPath}/addbook" class="button">Add New Book</a>
    </div>

</body>
</html>
