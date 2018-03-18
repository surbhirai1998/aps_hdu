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

public class AddReport extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AddReport() {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String p_name= request.getParameter("name");
		String dob= request.getParameter("dob");
		String gender= request.getParameter("gender");
		String email= request.getParameter("email");
		String d_email= request.getParameter("d_email");
		String d_name= request.getParameter("doc_name");
		String suggestions=request.getParameter("suggestions");
		String test=request.getParameter("test");
		String med[]=request.getParameterValues("med[]");
		Integer counter = Integer.parseInt(request.getParameter("counter"));
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
			String sql="insert into report"
					+"(id,name,email,dob,gender,d_name,d_email,suggestions,test)"
					+"values ((select nvl(max(id)+1,1000) from report),'"+p_name+"','"
					+email+"','"+dob+"','"+gender+"','"
					+d_name+"','"+d_email+"','"+suggestions+"','"+test+"')";
			
			pstmt = con.prepareStatement(sql);
			int totalRecord = pstmt.executeUpdate();
			System.out.println(totalRecord);	
			for(int i=0;i<counter;i++){
				String sql1 = "insert into meds(id,r_id,med_description)"
									+"values("
									+"(select nvl(max(id)+1,1000) from meds),(select max(id) from report),?)";
				pstmt = con.prepareStatement(sql1);
				pstmt.setString(1,med[i]);
				System.out.println("statement created");
				System.out.println(sql1);
				int added = pstmt.executeUpdate();
				System.out.println(added);
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
		
		Report r = new Report();
		r.setD_name(d_name);
		r.setD_email(d_email);
		r.setGender(gender);
		r.setMed(med);
		r.setP_name(p_name);
		r.setSuggestions(suggestions);
		r.setTest(test);
		r.setDob(dob);
		r.setEmail(email);
		
		request.setAttribute("report", r);
		request.setAttribute("counter", counter);
		RequestDispatcher rd = request.getRequestDispatcher("show_added_report.jsp");
		rd.forward(request,response);
	
			
	}

}
