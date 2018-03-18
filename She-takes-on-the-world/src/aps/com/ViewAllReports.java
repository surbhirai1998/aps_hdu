package aps.com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

public class ViewAllReports extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ViewAllReports() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		if(session == null){
			response.sendRedirect("login1.jsp");
		}
		String email = (String) session.getAttribute("client_name");
		
		Connection con= null;
		PreparedStatement pstmt = null;
		PreparedStatement pstmt2 = null;
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String pass = "root";
		String user = "system";
		ArrayList<Report> reportList = null;
		ArrayList<Integer> reportIdList = null;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("driver loaded");
			con= DriverManager.getConnection(url,user,pass);
			System.out.println("got connection");
			
			String sql = "select * from report where email='"+email+"'";
			pstmt = con.prepareStatement(sql);
			
			ResultSet rs = pstmt.executeQuery();
			reportList = new ArrayList<Report>();
			reportIdList = new ArrayList<Integer>();
			while(rs.next()){
				Report r = new Report();
				Integer reportId = rs.getInt("id");
				String p_name = rs.getString("name");
				String dob =  rs.getString("dob");
				String gender =  rs.getString("gender");
				String d_name =  rs.getString("d_name");
				String d_email =  rs.getString("d_email");
				String suggestions =  rs.getString("suggestions");
				String test =  rs.getString("test");
				ArrayList<String> medList= new ArrayList<String>(); 
				String sql2 = "select * from meds where r_id="+reportId;
				pstmt2 = con.prepareStatement(sql2);
				ResultSet rs2 = pstmt.executeQuery();
				while(rs2.next()){
					String medDescription= rs.getString("med_description");
					medList.add(medDescription);
				}
				String [] meds = medList.toArray(new String[medList.size()]);
				
				r.setD_name(d_name);
				r.setD_email(d_email);
				r.setGender(gender);
				r.setP_name(p_name);
				r.setSuggestions(suggestions);
				r.setTest(test);
				r.setDob(dob);
				r.setEmail(email);
				r.setMed(meds);
				reportList.add(r);
				reportIdList.add(reportId);
			}
			 
		}catch(Exception e){
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
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
		
		
		
		request.setAttribute("reportIdList", reportIdList);
		request.setAttribute("reportList", reportList);
		RequestDispatcher rd = request.getRequestDispatcher("show_reports.jsp");
		rd.forward(request,response);
		
		
		
	}

	
}
