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


public class AddingUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public AddingUser() {
        super();
        
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String dob = request.getParameter("dob");
		String email = request.getParameter("email");
		String password= request.getParameter("password");
		String	state =request.getParameter("state");
		String city = request.getParameter("city");
		String	mobileNo =  request.getParameter("mobile_no");
		
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
			
			
			String sql = "insert into woman_user"
					+ "(id,name,email,password,dob,state,city,mobileNo) "
					+ "values((select nvl(max(id)+1,100) from woman_user),?,?,?,?,?,?,?)";
			System.out.println(sql);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			pstmt.setString(3, password);
			pstmt.setString(4, dob);
			pstmt.setString(5, state);
			pstmt.setString(6, city);
			pstmt.setString(7, mobileNo);
			
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
		
		/*User user1 = new User();
		user1.setName(name);
		user1.setEmail(email);
		user1.setPassword(password);
		user1.setDob(dob);
		user1.setMobileNo(mobileNo);
		user1.setCity(city);
		user1.setState(state);
		request.setAttribute("user", user1);*/
		RequestDispatcher rd = request.getRequestDispatcher("confirmation_of_signup.jsp");
		rd.forward(request,response);
	
		
		
	}

}
