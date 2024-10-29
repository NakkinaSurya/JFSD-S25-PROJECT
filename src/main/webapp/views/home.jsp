<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - Career Assessment Tool</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* General Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #f0f8ff, #e6e6fa); /* Light gradient background */
            color: #333; /* Dark text for contrast */
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            padding-top: 60px; /* Ensure content doesn't hide behind fixed navbar */
        }

        /* Navigation Bar */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 100%;
            padding: 20px;
            background: #ffffff; /* White background for navbar */
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1000;
        }

        .navbar .logo img {
            height: 50px;
        }

        .navbar .nav-links {
            display: flex;
            gap: 30px;
            list-style: none;
        }

        .navbar .nav-links a {
            color: #5f9ea0; /* Cadet blue text */
            text-decoration: none;
            font-size: 18px;
            padding: 10px 15px;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }

        .navbar .nav-links a:hover {
            background: #5f9ea0; /* Change background on hover */
            color: #ffffff; /* White text on hover */
        }

        .navbar .auth-links a {
            color: #5f9ea0; /* Cadet blue text */
            text-decoration: none;
            padding: 10px 15px;
            border: 2px solid #5f9ea0; /* Cadet blue border */
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }

        .navbar .auth-links a:hover {
            background: #5f9ea0; /* Blue background on hover */
            color: #ffffff; /* White text on hover */
        }

        /* Main Content */
        .content {
            background: #ffffff; /* White background for main content */
            border-radius: 15px;
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.2);
            padding: 40px;
            width: 90%;
            max-width: 800px; /* Max width for larger screens */
            margin-top: 80px; /* Space below the navbar */
            text-align: center; /* Center text */
        }

        h1 {
            margin-bottom: 20px;
            font-size: 26px;
            color: #5f9ea0; /* Cadet blue for headings */
        }

        p {
            font-size: 18px; /* Larger text for main content */
            color: #333; /* Dark text for readability */
        }

        /* Responsive Styles */
        @media (max-width: 600px) {
            .navbar .nav-links {
                flex-direction: column;
                gap: 15px;
            }
            .content {
                padding: 30px;
            }
        }
    </style>
</head>
<body>
    <div class="navbar">
        <div class="logo"><a href="/"><img src="data:image/jpeg;base64,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" alt="Logo"></a></div>
        <ul class="nav-links">
            <li><a href="/">Home</a></li>
            <li><a href="/aboutus">About Us</a></li>
            <li><a href="/contactus">Contact Us</a></li>
            <li><a href="/feedback">Feedback</a></li>
        </ul>
        <div class="auth-links"><a href="/login">Login</a><a href="/signup">Signup</a></div>
    </div>

    <div class="content">
        <h1>Welcome to the Career Assessment Tool</h1>
        <p>Your journey towards a fulfilling career begins here!</p>
        <p>Explore assessments, take personality tests, and receive career recommendations tailored just for you!</p>
    </div>
</body>
</html>
