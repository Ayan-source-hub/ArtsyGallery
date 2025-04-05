package gallery;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Servlet implementation class signup
 */
@WebServlet("/home2")
public class signin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	String uemail = request.getParameter("email");
	String upassword = request.getParameter("password");
	HttpSession session = request.getSession();
	RequestDispatcher dispatcher = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register?useSSL=false","root","ayan$33517");
		PreparedStatement pst = con.prepareStatement("select * from users where uemail = ? and upassword = ?");
		pst.setString(1,  uemail);
		pst.setString(2,  upassword);
		
		ResultSet rs = pst.executeQuery();
		if(rs.next()) {
			session.setAttribute("name", rs.getString("uname"));
			dispatcher = request.getRequestDispatcher("home2.html");
		}else if ("roy97346265@gmail.com".equals(uemail) && "password".equals(upassword)) {
            response.sendRedirect("admin.html");
        }else {
			request.setAttribute("status", "failed");
			dispatcher = request.getRequestDispatcher("xample2.html");
		}
		dispatcher.forward(request,  response);
	}  catch (Exception e) {
		e.printStackTrace();
	}
	}

}
