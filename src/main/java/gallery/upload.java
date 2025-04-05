package gallery;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/product")
public class upload extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String id = request.getParameter("id");
        String height = request.getParameter("height");
        String width = request.getParameter("width");
        String description = request.getParameter("description");
        String image = request.getParameter("image");

        RequestDispatcher dispatcher = null;
        Connection con = null;

        try {
            // Load the database driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish the connection
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/upload?useSSL=false", "root", "ayan$33517");

            // Prepare SQL query
            PreparedStatement pst = con.prepareStatement("INSERT INTO product1(name, id, height, width, description, image) VALUES (?, ?, ?, ?, ?, ?)");
            pst.setString(1, name);
            pst.setString(2, id);
            pst.setString(3, height);
            pst.setString(4, width);
            pst.setString(5, description);
            pst.setString(6, image);

            // Execute the query
            int rowCount = pst.executeUpdate();
            dispatcher = request.getRequestDispatcher("upload.html");

            // Set status based on query result
            if (rowCount > 0) {
                request.setAttribute("status", "success");
            } else {
                request.setAttribute("status", "failed");
            }

            // Forward the request
            dispatcher.forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();

        } finally {
            // Safely close the connection
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
