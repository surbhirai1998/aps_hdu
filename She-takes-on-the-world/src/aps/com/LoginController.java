package aps.com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    public LoginController() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("user_name");
		String userPassword= request.getParameter("user_password");
		
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
			
			String sql = "select *  from woman_user where email='"+userName+"' and password='"+userPassword+"'";
			System.out.println(sql);
			pstmt = con.prepareStatement(sql);
			
			
			System.out.println("statement created");
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()){
				
				System.out.println("logged in");	
				request.setAttribute("client_name", userName);
				RequestDispatcher rd= request.getRequestDispatcher("logged_in_home.jsp");
				rd.forward(request,response);
			
			}else{
				System.out.println("not logged in");
				response.sendRedirect("http://localhost:8088/She_Takes_On_The_World/login_again.jsp");
			}
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
		
	
	}

}
