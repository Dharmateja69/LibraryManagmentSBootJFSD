<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About - Library Management</title>

    <style>
        /* Content styles after sidebar */
        .content {
            margin-left: 250px; /* To make space for the sidebar */
            padding: 30px;
            background: #ffffff;
            color: #333;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            transition: margin-left 0.3s ease;
        }

        /* Title and Heading Styles */
        .content h2 {
            font-size: 2.5rem;
            font-weight: 600;
            color: #005f73;
            margin-bottom: 20px;
        }

        .content h3 {
            font-size: 1.8rem;
            font-weight: 500;
            color: #008c9e;
            margin-bottom: 15px;
        }

        /* Paragraphs */
        .content p {
            font-size: 1.1rem;
            line-height: 1.6;
            margin-bottom: 20px;
            color: #555;
        }

        /* Features List */
        .content ul {
            list-style: none;
            padding-left: 0;
            margin-bottom: 25px;
        }

        .content ul li {
            font-size: 1.1rem;
            margin-bottom: 10px;
            color: #333;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .content ul li::before {
            content: '\2022'; /* Unicode for bullet point */
            font-size: 1.5rem;
            color: #005f73;
            margin-right: 10px;
        }

        /* Contact Section */
        .content .contact ul {
            list-style: none;
            padding-left: 0;
            margin-top: 20px;
        }

        .content .contact ul li {
            font-size: 1.1rem;
            margin-bottom: 10px;
            color: #333;
        }

        /* Social Links */
        .content .social-links a {
            color: #008c9e;
            text-decoration: none;
            font-size: 1.3rem;
            margin-right: 20px;
            transition: color 0.3s;
        }

        .content .social-links a:hover {
            color: #ffd700;
        }

        /* Contact Information */
        .content .email {
            font-size: 1.1rem;
            color: #005f73;
            font-weight: bold;
            text-decoration: none;
        }

        .content .email:hover {
            color: #008c9e;
        }

        /* Styling for Responsiveness */
        @media (max-width: 768px) {
            .content {
                margin-left: 0;
                padding: 20px;
            }

            .content h2 {
                font-size: 2rem;
            }

            .content h3 {
                font-size: 1.5rem;
            }

            .content ul li {
                font-size: 1rem;
            }

            .content .social-links a {
                font-size: 1.1rem;
                margin-right: 10px;
            }
        }
    </style>
</head>
<body>
    <!-- Include the sidebar.jsp content -->
    <%@ include file="sidebar.jsp" %>

    <div class="content">
        <h2>About the Library Management System</h2>
        <p>Welcome to the Library Management System! This system is designed to streamline the management of books, users, and the overall library operations. The goal is to make borrowing, returning, and managing books efficient and user-friendly.</p>
        
        <h3>Our Mission</h3>
        <p>Our mission is to provide a convenient and digital solution for managing library operations and ensuring that users can easily access books for their educational and recreational needs. We aim to enhance the overall experience of both library staff and users.</p>
        
        <h3>Features</h3>
        <ul>
            <li>User Registration</li>
            <li>Borrow Books</li>
            <li>Return Books</li>
            <li>Manage Book Inventory</li>
            <li>Track Borrowing History</li>
        </ul>
        
        <h3>Contact Us</h3>
        <p>If you have any questions or need assistance, feel free to reach out to us:</p>
        <div class="contact">
            <ul>
                <li>Email: <a class="email" href="mailto:library@gmail.com">library@gmail.com</a></li>
                <li>Follow us on Social Media:</li>
                <div class="social-links">
                    <a href="https://t.me/library" target="_blank"><i class="fab fa-telegram"></i>Telegram</a>
                    <a href="https://instagram.com/library" target="_blank"><i class="fab fa-instagram"></i>Instagram</a>
                    <a href="https://twitter.com/library" target="_blank"><i class="fab fa-twitter"></i>Twitter</a>
                    <a href="https://youtube.com/library" target="_blank"><i class="fab fa-youtube"></i>YouTube</a>
                    <a href="https://facebook.com/library" target="_blank"><i class="fab fa-facebook"></i>Facebook</a>
                </div>
            </ul>
        </div>
    </div>
</body>
</html>
