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
        <div class="logo"><a href="/"><img src="data:image/jpeg;base64,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" alt="Logo"></a></div>
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
