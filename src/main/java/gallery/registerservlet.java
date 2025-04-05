package gallery;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Servlet implementation class registerservlet
 */
@WebServlet("/registerservlet")
public class registerservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname = request.getParameter("name");
		String uemail = request.getParameter("email");
		String ucontact = request.getParameter("contact");
		String udate = request.getParameter("date");
		String ugender = request.getParameter("gender");
		String upassword = request.getParameter("password");
		String uplace = request.getParameter("place");
		String uregion = request.getParameter("region");
		String upostalcode = request.getParameter("postalcode");
		
//		PrintWriter out = response.getWriter();
//		out.print(uname);
//		out.print(uemail);
//		out.print(ucontact);
//		out.print(udate);
//		out.print(ugender);
//		out.print(uaddress);
//		out.print(uplace);
//		out.print(uregion);
//		out.print(upostalcode);
		
		RequestDispatcher dispatcher = null;
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register?useSSL=false","root","ayan$33517");
			PreparedStatement pst = con.prepareStatement("insert into users(uname,uemail,ucontact,udate,ugender,upassword,uplace,uregion,upostalcode) values(?,?,?,?,?,?,?,?,?) ");
			pst.setString(1, uname);
			pst.setString(2, uemail);
			pst.setString(3, ucontact);
			pst.setString(4, udate);
			pst.setString(5, ugender);
			pst.setString(6, upassword);
			pst.setString(7, uplace);
			pst.setString(8, uplace);
			pst.setString(9, upostalcode);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("xample2.html");
			if(rowCount > 0) {
				request.setAttribute("status", "success");
			}else {
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
