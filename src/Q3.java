import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Q3 {

	public static void main(String[] args) {
		topTenPatients();
	}

	public static void topTenPatients() {
		try {
			Connection myConn = DriverManager
					.getConnection("jdbc:mysql://localhost:3306/ck?autoReconnect=true&useSSL=false", "root", "MyPass");
			Statement myStmt = myConn.createStatement();
			int myRs = myStmt.executeUpdate("CREATE VIEW top_ten_patients AS\r\n"
					+ "SELECT patient_name FROM patients, queue, queue_reserved \r\n"
					+ "ORDER BY ( time - queue_reserved.queue_time  )  limit 10; ");

		} catch (Exception ex) {
			ex.printStackTrace();
		}

	}

}
