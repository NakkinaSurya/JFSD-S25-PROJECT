<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Career Assessment Tool - Home</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha384-k6RqeWeci5ZR/Lv4MR0sA0FfDOMIx0u8KH+zZ4I+qX7sXBb5Rd4Vp5q5TVKVI4l2" crossorigin="anonymous">
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f7fa;
            color: #333;
        }
        
        /* Navbar Styles */
        .navbar {
            display: flex;
            align-items: center;
            justify-content: space-between;
            background-color: #1c1c3c;
            padding: 15px 30px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        .navbar .logo img {
            height: 50px;
        }
        
        /* Navigation Links */
        .navbar .nav-links {
            display: flex;
            gap: 25px;
            list-style: none;
        }
        .navbar .nav-links a {
            color: #ffffff;
            text-decoration: none;
            font-size: 16px;
            padding: 8px 12px;
            border-radius: 4px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }
        .navbar .nav-links a:hover {
            background-color: #3c3c5c;
            transform: scale(1.05);
        }
        
        /* Authentication Links */
        .navbar .auth-links a {
            color: #ffffff;
            text-decoration: none;
            font-size: 16px;
            padding: 8px 15px;
            border: 1px solid #ffffff;
            border-radius: 4px;
            margin-left: 10px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }
        .navbar .auth-links a:hover {
            background-color: #3c3c5c;
            border-color: #3c3c5c;
            transform: scale(1.05);
        }
        
        /* Main Content */
        .content {
            text-align: center;
            padding: 50px 20px;
        }
        .content h1 {
            font-size: 36px;
            color: #1c1c3c;
            margin-bottom: 15px;
        }
        .content p {
            font-size: 18px;
            color: #555;
        }
    </style>
</head>
<body>

<!-- Navigation Bar -->
<div class="navbar">
    <!-- Logo -->
    <div class="logo">
        <a href="/">
            <img src="https://thumbs.dreamstime.com/b/career-icon-trendy-logo-concept-white-background-human-resources-collection-133513442.jpg" alt="Career Assessment Tool Logo">
        </a>
    </div>
    
    <!-- Navigation Links -->
    <ul class="nav-links">
        <li><a href="/">Home</a></li>
        <li><a href="/aboutus">About Us</a></li>
        <li><a href="/contactus">Contact Us</a></li>
        <li><a href="/feedback">Feedback</a></li>
    </ul>
    
    <!-- Authentication Links -->
    <div class="auth-links">
        <a href="/login">Login</a>
        <a href="/signup">Signup</a>
    </div>
</div>

<!-- Main Content -->
<div class="content">
    <h1>Welcome to the Career Assessment Tool</h1>
    <p>Your journey towards a fulfilling career begins here!</p>
</div>

</body>
</html>
