package Jewel;




import java.sql.*;


public class DBConnection {

    public static Connection getDBConnection() {
        Connection con = null;
        try {
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/database1", "root", "123");
        } catch (Exception e) {
        }
        return con;
    }
}
