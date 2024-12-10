<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
          crossorigin="anonymous">
    <style>
        .main-container {
            display: flex;
            justify-content: center;
        }
        .table-container {
            width: 80%;
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<jsp:include page="sidebar.jsp" />

<div class="container main-container">
    <div class="table-container">
        <h1>User List</h1>
        <table class="table table-bordered table-hover">
            <thead class="thead-light">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Author</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="user" items="${Userlist}">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.name}</td>
                    <td>${user.author}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
