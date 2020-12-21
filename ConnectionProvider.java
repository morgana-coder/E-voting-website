package Project;
import java.sql.*;
import java.sql.DriverManager;

public class ConnectionProvider {
	public static Connection getCon() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:1222/form","root","Pb11cn4929@Nimue");
			return con;
		}
		catch(Exception e) {
			System.out.println(e);
			return null;
		}
	}

}
