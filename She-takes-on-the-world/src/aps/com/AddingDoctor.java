package aps.com;
 
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddingDoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddingDoctor() {
        super();
       
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password= request.getParameter("password");
		String city = request.getParameter("city");
		String	mobileNo =  request.getParameter("mobile_no");
		String	qualification =  request.getParameter("qualifications");
		Integer	experience =  Integer.parseInt(request.getParameter("experience"));
		Integer fees = Integer.parseInt(request.getParameter("fees"));
		Connection con= null;
		PreparedStatement pstmt = null;
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String pass = "root";
		String user = "system";
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("driver loaded");
			con= DriverManager.getConnection(url,user,pass);
			System.out.println("got connection");
			
			
			String sql = "insert into doctor_user"
					+ "(id,name,email,password,city,mobileNo,experience,qualification,fees) "
					+ "values((select nvl(max(id)+1,100) from doctor_user),?,?,?,?,?,?,?,?)";
			System.out.println(sql);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			pstmt.setString(3, password);
			pstmt.setString(4, city);
			pstmt.setString(5, mobileNo);
			pstmt.setInt(6, experience);
			pstmt.setString(7, qualification);
			pstmt.setInt(8, fees);
			
			System.out.println("statement created");
			int totalRecord = pstmt.executeUpdate();
			
			System.out.println(totalRecord);	
			
		}catch(Exception e){
			try {
				con.rollback();
			} catch (SQLException e1) {
				
				e1.printStackTrace();
			}
			e.printStackTrace();
		}finally{
			try {
				if(con!=null)
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("confirmation_of_signup_doctor.jsp");
		rd.forward(request,response);
	
		
	}

}
