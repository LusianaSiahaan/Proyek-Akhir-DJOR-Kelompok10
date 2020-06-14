
package djorapp;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author User
 */
public class Koneksi {
    Connection conn;
    
    public Connection getConn(){
        return conn;
    }
    
    
    public static void main(String[] args) {
    
        try {
    Class.forName("org.mariadb.jdbc.Driver").newInstance();
    Connection conn;
    String url = "jdbc:mariadb://localhost/djor?user=root&password=123456789";
    conn =  DriverManager.getConnection(url);
} catch (Exception e) {
    System.out.println("SQL Exception: "+ e.toString());
}  
    }
    
    }

