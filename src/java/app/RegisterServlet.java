package app;

import app.ConnectionProvider;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        
        try {
            addUserToDatabase(name, surname, username, password, email, phone);
            request.setAttribute("message", "Account created successfully");
            response.sendRedirect("login.jsp");
        }
        catch (SQLException e) {
            if (e.getSQLState().equals("23505")) {
                request.setAttribute("errorMessage", "Username or email already exists");
                request.getRequestDispatcher("register.jsp").forward(request, response);
                
            }
            throw new ServletException("Database error during registration", e);
        } 
    }
    
    private void addUserToDatabase(String name, String surname, String username, String password, String email, String phone) throws SQLException{
        
        String sql = "INSERT INTO users (name, surname, username, password, email, phone) VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection conn = ConnectionProvider.getConnection(); 
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, name);
            stmt.setString(2, surname);
            stmt.setString(3, username);
            stmt.setString(4, password);
            stmt.setString(5, email);
            stmt.setString(6, phone);
            
            stmt.executeUpdate();
        }
    }
    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("register.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Servlet for user registration";
    }
}
