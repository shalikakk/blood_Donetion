
package myclass;

import java.sql.Connection;
import java.sql.DriverManager;


public class Dbconnector {
Connection con;
String DRIVER="com.mysql.jdbc.Driver";
String URL="jdbc:mysql://localhost:3306/taxi";
String USERNAME="root";
String PASSWORD="";
public Connection getConnection(){
    try {
        Class.forName(DRIVER);
        con=DriverManager.getConnection(URL,USERNAME,PASSWORD);
    } catch (Exception e) {
        System.out.println(e.getMessage());
    }
return con;
}
        
}
