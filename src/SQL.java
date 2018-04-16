import java.sql.*;
import java.util.Scanner;

/*
 * https://stackoverflow.com/questions/34189756/warning-about-ssl-connection-when-connecting-to-mysql-database?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa
 */
public class SQL {

	public static void main(String[] args) {
		try {
			Connection myConn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/ck?autoReconnect=true&useSSL=false", "root", "MyPass");
			Statement myStmt = myConn.createStatement();
			ResultSet myRs = null;
			
			getDoctorPatients(myConn, myStmt, myRs); // Question 1
			
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	public static void getDoctorPatients(Connection myConn, Statement myStmt, ResultSet myRs) {
		try {
			Scanner sc = new Scanner(System.in);
			System.out.println("Enter doctor name: ");
			String doctorName = "";
			doctorName = sc.nextLine();

			myRs = myStmt.executeQuery("SELECT patient_name, queue_time FROM doctors, patients, queue_reserved\r\n"
					+ "WHERE doctor_name = \"" + doctorName + "\"\r\n"
					+ "AND doctors.doctor_id = queue_reserved.doctor_id \r\n"
					+ "AND patients.patient_id = queue_reserved.patient_id ");
			while (myRs.next()) {
				System.out.println(myRs.getString("patient_name") + "  " + myRs.getString("queue_time"));
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

}
