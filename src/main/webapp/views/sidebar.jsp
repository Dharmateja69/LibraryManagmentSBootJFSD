<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sidebar</title>
    <!-- Add Font Awesome CDN for icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

    <style>
        /* sidebar.css content goes here */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background: #f5f5f5;
            color: #333;
            display: flex;
            min-height: 100vh;
            flex-direction: row;
        }

        .sidebar {
            width: 250px;
            background: linear-gradient(135deg, #005f73, #008c9e);
            color: white;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            position: fixed;
            height: 100%;
            padding-top: 20px;
            padding-left: 20px;
            text-align: center;
        }

        .sidebar h1 {
            font-size: 1.5rem;
            font-weight: 700;
            color: white;
            margin-bottom: 30px;
        }

        .sidebar ul {
            list-style: none;
            padding: 0;
            margin-bottom: auto;
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 15px;
        }

        .sidebar ul li {
            width: 100%;
            text-align: center;
        }

        .sidebar ul li a {
            text-decoration: none;
            color: white;
            font-weight: bold;
            font-size: 1rem;
            display: block;
            transition: color 0.3s;
            padding: 8px 0;
        }

        .sidebar ul li a:hover {
            color: #ffd700;
        }

        .social-media {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-top: 20px;
            padding: 10px 0;
        }

        .social-media a {
            color: white;
            font-size: 1.5rem; /* Increased size for visibility */
            transition: color 0.3s;
        }

        .social-media a:hover {
            color: #ffd700;
        }

        .logout {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        .logout a {
            text-decoration: none;
            color: white;
            font-weight: bold;
            background-color: #d9534f;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background 0.3s;
        }

        .logout a:hover {
            background-color: #c9302c;
        }

        .content {
            margin-left: 250px;
            padding: 20px;
            flex: 1;
            background: #ffffff;
        }

        @media (max-width: 768px) {
            .sidebar {
                width: 100%;
                height: auto;
                position: relative;
            }

            .content {
                margin-left: 0;
            }

            .social-media {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
   <a href="<%= request.getContextPath() %>/"><h1>Library Management</h1></a>
    
    <ul>
        <li><a href="<%= request.getContextPath() %>/about">About</a></li>
           <li><a href="<%= request.getContextPath() %>/book">Books</a></li>
        <li><a href="<%= request.getContextPath() %>/users">Users</a></li>
          <li><a href="<%= request.getContextPath() %>/return-book">Return Book</a></li>
        <li><a href="<%= request.getContextPath() %>/borrow-book">Borrow Book</a></li>
         <li><a href="<%= request.getContextPath() %>/addbook">Add Book</a></li>
      <li><a href="<%= request.getContextPath() %>/registration">Add User</a></li>
     
    </ul>
    
    <div class="logout">
        <a href="<%= request.getContextPath() %>/logout">Logout</a>
    </div>

    <div class="social-media">
        <a href="https://t.me/library" target="_blank"><i class="fab fa-telegram"></i></a>
        <a href="https://instagram.com/library" target="_blank"><i class="fab fa-instagram"></i></a>
        <a href="https://twitter.com/library" target="_blank"><i class="fab fa-twitter"></i></a>
        <a href="https://youtube.com/library" target="_blank"><i class="fab fa-youtube"></i></a>
        <a href="https://facebook.com/library" target="_blank"><i class="fab fa-facebook"></i></a>
        <a href="mailto:library@gmail.com"><i class="fas fa-envelope"></i></a>
    </div>
</div>

</body>
</html>
