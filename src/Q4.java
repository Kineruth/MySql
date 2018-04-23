import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Q4 {

	public static void main(String[] args) {

	}

	public static void updateQueue() {
		try {
			Connection myConn = DriverManager
					.getConnection("jdbc:mysql://localhost:3306/ck?autoReconnect=true&useSSL=false", "root", "MyPass");
			Statement myStmt = myConn.createStatement();
			int myRs = myStmt.executeUpdate("		DELIMITER $$\r\n" + "		USE ck $$\r\n"
					+ "		CREATE TRIGGER trig \r\n" + "		AFTER INSERT ON queue FOR EACH ROW\r\n"
					+ "		BEGIN \r\n" + "		declare doc int;\r\n" + "		declare id_new int;\r\n"
					+ "		SET id_new = new.queue_id;\r\n"
					+ "		SET doc = (SELECT doctor_id FROM queue, queue_reserved\r\n"
					+ "				  WHERE queue_reserved.queue_id = id_new \r\n"
					+ "		          AND queue.queue_id = queue_reserved.queue_id);\r\n"
					+ "		if exists(SELECT date FROM queue_summery WHERE date = convert(now(),date)) THEN \r\n"
					+ "				  UPDATE  queue_reserved \r\n"
					+ "		          SET doctor_id = doctor_id, date = date, patient_num = patient_num + 1\r\n"
					+ "		          WHERE date = convert(now(),date) AND doctor_id = doc;\r\n" + "		else \r\n"
					+ "				  INSERT INTO queue_summery\r\n"
					+ "		          VALUES(doctor,convert(now(),date),1);\r\n" + "		END if;\r\n"
					+ "		END $$\r\n" + "		DELIMITER ; ");

		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
}
