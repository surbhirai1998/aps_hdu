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



public class ShowDoctors extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public ShowDoctors() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String location = request.getParameter("");
		
				
/*
		//jdbc
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
			
			
			String sql1 = "select constituent_name from Constituents where m_id in "
					+"(select id from mainTable where med_name='"+"')";
			
			pstmt  = con.prepareStatement(sql1);
			ResultSet rs1 = pstmt.executeQuery();
			ArrayList<String> cons = new ArrayList<String>();
			while(rs1 !=null){
				cons.add(rs1.getString("constituent_name"));
			}
			
			
			String sql = "select * from mainTable";
			System.out.println(sql);
			pstmt = con.prepareStatement(sql);
			
			System.out.println("statement created");
			ResultSet rs = pstmt.executeQuery();
			
			medList = new ArrayList<Medicine>();			
			while(rs.next()){
				Medicine m = new Medicine(); 
				String name = rs.getString("med_name");
				brand = rs.getString("brand");
				price = rs.getFloat("price");
				category = rs.getString("category");
				m.setNameOfMedicine(name);
				m.setBrand(brand);
				m.setCategory(category);
				m.setPrice(price);
				m.setConstituents(constituents);
				medList.add(m);
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
		
		
		request.setAttribute("med_name", nameOfMedicine);
		request.setAttribute("medList", medList);
		RequestDispatcher rd = request.getRequestDispatcher("Copy_of_search_by_medname.jsp");
		rd.forward(request,response);
		
		*/
		
	}

}
