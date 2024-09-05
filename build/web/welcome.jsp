<%-- 
    Document   : welcome
    Created on : 27 Aug 2024, 15:37:12
    Author     : chayv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
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
            h1 {
                color: #333333;
                margin-bottom: 20px;
                font-size: 24px;
                font-weight: 600;
            }
            .logout-button {
                background-color: #1E90FF;
                color: white;
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-size: 16px;
                transition: background-color 0.3s;
                text-decoration: none;
            }
            .logout-button:hover {
                background-color: #1C86EE;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Welcome, <%= session.getAttribute("username") %>!</h1>
            <a href="LogoutServlet" class="logout-button">Logout</a>
        </div>
        
    </body>
</html>
