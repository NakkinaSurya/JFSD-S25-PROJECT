<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup - Career Assessment Tool</title>
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

        /* Page Container */
        .container {
            background: #ffffff; /* White background for form */
            border-radius: 15px;
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.2);
            padding: 40px;
            width: 90%;
            max-width: 450px;
            margin-top: 20px; /* Space below the navbar */
            text-align: center;
        }

        h1 {
            margin-bottom: 20px;
            font-size: 26px;
            color: #5f9ea0; /* Cadet blue for headings */
        }

        input[type="text"],
        input[type="password"],
        input[type="email"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 2px solid #5f9ea0; /* Cadet blue border */
            border-radius: 5px;
            font-size: 16px;
            transition: border-color 0.3s;
        }

        input[type="text"]:focus,
        input[type="password"]:focus,
        input[type="email"]:focus {
            border-color: #4682b4; /* Steel blue on focus */
            outline: none; /* Remove outline */
        }

        button {
            background: #5f9ea0; /* Cadet blue background */
            color: #ffffff; /* White text */
            border: none;
            padding: 12px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s, transform 0.3s;
            width: 100%; /* Full width for the button */
        }

        button:hover {
            background: #4682b4; /* Steel blue on hover */
            transform: scale(1.05); /* Slight zoom effect */
        }

        /* Responsive Styles */
        @media (max-width: 600px) {
            .navbar .nav-links {
                flex-direction: column;
                gap: 15px;
            }
            .container {
                padding: 30px;
            }
        }
    </style>
</head>
<body>
    <div class="navbar">
        <div class="logo"><a href="/"><img src="https://via.placeholder.com/100x40" alt="Logo"></a></div>
        <ul class="nav-links">
            <li><a href="/">Home</a></li>
            <li><a href="/aboutus">About Us</a></li>
            <li><a href="/contactus">Contact Us</a></li>
            <li><a href="/feedback">Feedback</a></li>
        </ul>
        <div class="auth-links"><a href="/login">Login</a><a href="/signup">Signup</a></div>
    </div>

    <div class="container">
        <h1>Signup</h1>
        <form action="processSignup.jsp" method="post">
            <input type="text" name="fullname" placeholder="Full Name" required>
            <input type="text" name="username" placeholder="Username" required>
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit">Signup</button>
        </form>
    </div>
</body>
</html>
