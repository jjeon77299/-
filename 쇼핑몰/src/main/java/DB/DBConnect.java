package DB;

import java.sql.*;

public class DBConnect {

	public static Connection getConnection() {
		Connection conn = null;
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe"; //url 생성
		String id = "system"; //id 생성
		String pw = "1234"; //pw 생성
		
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection(url, id, pw);
			
			System.out.println("DB test");
		} catch(Exception e) {
			e.printStackTrace();
		}//try-catch문을 이용해 DB와 연결한다.

		return conn;
	}
}