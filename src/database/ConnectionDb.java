package database;

import java.sql.Connection;
import java.sql.DriverManager;

import database.ConnectionDb;
public class ConnectionDb {
	
	public Connection getConnection()
	{
		  String JdbcURL = "jdbc:mysql://localhost:3306/galsenphoto";
	      String Username = "pispros";
	      String password = "Passer1234@";
	      Connection BD = null;
	      try {
	    	 Class.forName("com.mysql.jdbc.Driver");  
	         System.out.println("Connecting to database..............."+JdbcURL);
	         BD=DriverManager.getConnection(JdbcURL, Username, password);
	         System.out.println("Connection is successful!!!!!!");
	      }
	      catch(Exception e) {
	         e.printStackTrace();
	      }
	      
	      return BD;
	}
}

