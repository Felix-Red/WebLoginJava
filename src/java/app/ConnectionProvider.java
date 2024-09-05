package app;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author chayv
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider {
    
    private static final String URL = "jdbc:postgresql://localhost:5432/library_management";
    private static final String USER = "postgres";
    private static final String PASSWORD = "Chay7277";
    
    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("org.postgresql.Driver");
            return DriverManager.getConnection(URL, USER, PASSWORD);
        }
        catch (ClassNotFoundException e){
            throw new SQLException("Postgres driver not found", e);
        }
    }
    
}
