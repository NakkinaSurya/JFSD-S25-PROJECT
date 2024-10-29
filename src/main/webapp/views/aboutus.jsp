<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Career Assessment Tool</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha384-k6RqeWeci5ZR/Lv4MR0sA0FfDOMIx0u8KH+zZ4I+qX7sXBb5Rd4Vp5q5TVKVI4l2" crossorigin="anonymous">
    <style>
        /* Same CSS as in contactus.jsp */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #f0f8ff, #e6e6fa);
            color: #333;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            padding-top: 60px;
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 100%;
            padding: 20px;
            background: #ffffff;
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
            color: #5f9ea0;
            text-decoration: none;
            font-size: 18px;
            padding: 10px 15px;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }

        .navbar .nav-links a:hover {
            background: #5f9ea0;
            color: #ffffff;
        }

        .navbar .auth-links a {
            color: #5f9ea0;
            text-decoration: none;
            padding: 10px 15px;
            border: 2px solid #5f9ea0;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }

        .navbar .auth-links a:hover {
            background: #5f9ea0;
            color: #ffffff;
        }

        .container {
            background: #ffffff;
            border-radius: 15px;
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.2);
            padding: 40px;
            width: 90%;
            max-width: 450px;
            margin-top: 20px;
            text-align: center;
        }

        h1 {
            margin-bottom: 20px;
            font-size: 26px;
            color: #5f9ea0;
        }

        p {
            font-size: 18px;
            line-height: 1.6;
            color: #555;
        }

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
        <div class="logo"><a href="/"><img src="https://th.bing.com/th/id/OIP.rqd3wMbd1WhfBG-bA5AgjwAAAA?w=212&h=128&c=7&r=0&o=5&dpr=1.3&pid=1.7" alt="Logo"></a></div>
        <ul class="nav-links">
            <li><a href="/">Home</a></li>
            <li><a href="/aboutus">About Us</a></li>
            <li><a href="/contactus">Contact Us</a></li>
            <li><a href="/feedback">Feedback</a></li>
        </ul>
        <div class="auth-links"><a href="/login">Login</a><a href="/signup">Signup</a></div>
    </div>

    <div class="container">
        <h1>About Us</h1>
        <p>
            Welcome to the <span class="highlight">Career Assessment Tool</span> – a comprehensive platform designed to help students discover their strengths, understand their personality, and explore potential career paths. Our mission is to empower students by providing valuable insights into their skills, preferences, and aptitudes, making it easier for them to make informed career decisions.
        </p>
    </div>
</body>
</html>
