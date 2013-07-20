
package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class MYSQLConnection
{
    public static Connection con;
    public static Connection getMySQlConnection()
    {
        try {
           Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cse","root","root");
        System.out.println("connection created");
        } catch (Exception e)
        {
            System.out.println(" .."+e.getMessage());
        }
        return con;
    }
    public static void main(String[] args) {
        getMySQlConnection();
    }
    
}
