<%-- 
    Document   : login
    Created on : 27 Aug 2024, 14:28:17
    Author     : chayv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #e9f0f5;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }
            .container {
                background-color: #ffffff;
                padding: 40px 60px;
                border-radius: 10px;
                box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
                max-width: 400px;
                width: 100%;
                text-align: center;
            }
            h2 {
                color: #333333;
                margin-bottom: 30px;
                font-size: 24px;
                font-weight: 600;
            }
            input[type="text"],
            input[type="password"] {
                width: 100%;
                padding: 10px;
                margin: 10px 0;
                border: 1px solid #ddd;
                border-radius: 5px;
                font-size: 14px;
            }
            input[type="submit"] {
                background-color: #1E90FF;
                color: white;
                padding: 12px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-size: 16px;
                transition: background-color 0.3s;
            }
            input[type="submit"]:hover {
                background-color: #1C86EE;
            }
            .form-group {
                text-align: left;
                margin-bottom: 15px;
            }
            .form-group label {
                font-weight: bold;
                margin-bottom: 5px;
                display: inline-block;
                color: #555;
            }
            .forgot-password {
                margin-top: 10px;
                font-size: 14px;
                color: #1E90FF;
                text-decoration: none;
                display: block;
            }
            .forgot-password:hover {
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h2>Login to Your Account</h2>
            <form action="LoginServlet" method="POST">
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" required>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <input type="submit" value="Login">
                <a href="#" class="forgot-password">Forgot your password?</a>
            </form>
        </div>
    </body>
</html>
