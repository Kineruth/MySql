import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class Q2 {

	public static void main(String[] args) {
		addNewPatient();
	}

	/**
	 *  Code for question 1 in the assignment:
	 * Write a query that returns the patient_name & queue_time attending  for a specific doctor.
	 */
	public static void addNewPatient() {
		try {
			Scanner sc = new Scanner(System.in);
			System.out.println("Enter patient name: ");
			String patientName = sc.nextLine();
			sc.close();
			
			
			int queue_id = 0;
			String updatequeue =  "{call updatequeue(?)}";
			CallableStatement stmt = null;
			Connection myConn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/ck?autoReconnect=true&useSSL=false", "root", "MyPass");
			Statement myStmt = myConn.createStatement();
			ResultSet myRs = myStmt.executeQuery("SELECT queue_id FROM patients, queue_reserved\r\n"
					+ "WHERE patients.patient_id = queue_reserved.patient_id\r\n" + "AND patient_name LIKE \""
					+ patientName + "\";");
			
			if (myRs.isBeforeFirst()) {
				myRs.next();
				queue_id = myRs.getInt(1); // column 1
				stmt = myConn.prepareCall(updatequeue);
				stmt.setInt(1, queue_id);
				stmt.executeUpdate();
			} else {
				System.out.println("No such patient");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
}
