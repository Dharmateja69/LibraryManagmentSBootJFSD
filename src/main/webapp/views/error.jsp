<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error 404 - Page Not Found</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #eef2f3; /* Light gray-blue background for comfort */
            color: #333;
            text-align: center;
            padding: 50px;
        }

        .error-container {
            background-color: #ffffff;
            border: 2px solid #4CAF50; /* Soft green border for calmness */
            border-radius: 8px;
            display: inline-block;
            padding: 20px;
            max-width: 500px;
            width: 100%;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #4CAF50; /* Soft green for the 404 code */
            font-size: 100px;
            margin: 0;
        }

        h2 {
            color: #4CAF50;
            font-size: 24px;
            margin: 10px 0;
        }

        p {
            font-size: 16px;
            margin: 20px 0;
            color: #555; /* Dark gray for the message text */
        }

        .btn {
            background-color: #4CAF50; /* Soft green button */
            color: white;
            text-decoration: none;
            padding: 12px 20px;
            border-radius: 5px;
            font-size: 16px;
            margin-top: 20px;
            display: inline-block;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #45a049; /* Darker green on hover */
        }
    </style>
</head>
<body>

    <div class="error-container">
        <h1>404</h1>
        <h2>Oops! Page Not Found</h2>
        <p>The page you are looking for does not exist or the data you entered is incorrect. Please check and try again.</p>
        <!-- JSP dynamic link to home page -->
        <a href="<c:url value='/' />" class="btn">Go Back to Home</a>
    </div>

</body>
</html>
