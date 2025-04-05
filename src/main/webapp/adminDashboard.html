<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }
        .header {
            background-color: #4CAF50;
            color: white;
            padding: 15px 20px;
            text-align: center;
        }
        .sidebar {
            width: 250px;
            position: fixed;
            top: 0;
            left: 0;
            height: 100%;
            background-color: #333;
            color: white;
            padding-top: 20px;
        }
        .sidebar a {
            display: block;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
        }
        .sidebar a:hover {
            background-color: #575757;
        }
        .content {
            margin-left: 250px;
            padding: 20px;
        }
        .card {
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .card h3 {
            margin: 0 0 10px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>

<div class="header">
    <h1>User Management</h1>
</div>

<div class="sidebar">
    <a href="#userManagement">User Management</a>
    <a href="Landing_page.jsp">Logout</a>
</div>

<div class="content">
    <section id="userManagement" class="card">
        <h3>User Management</h3>
        <p>Below is the list of users:</p>

        <table>
            <thead>
                <tr>
                    <th>User ID</th>
                    <th>Username</th>
                    <th>Email</th>
                    <th>password</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <% 
                Connection conn = null;
                Statement stmt = null;
                PreparedStatement pstmt = null;
                ResultSet rs = null;

                String action = request.getParameter("action");
                int userIdToDelete = 0;

                if ("delete".equals(action)) {
                    userIdToDelete = Integer.parseInt(request.getParameter("id"));
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/batch2?user=root&password=admin");
                        String deleteQuery = "DELETE FROM users WHERE id = ?";
                        pstmt = conn.prepareStatement(deleteQuery);
                        pstmt.setInt(1, userIdToDelete);
                        int rowsDeleted = pstmt.executeUpdate();
                        if (rowsDeleted > 0) {
                            out.println("<p style='color:green;'>User deleted successfully!</p>");
                        } else {
                            out.println("<p style='color:red;'>Failed to delete user. User not found.</p>");
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                        if (pstmt != null) try { pstmt.close(); } catch (SQLException ignore) {}
                        if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
                    }
                }

                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/batch2?user=root&password=admin");
                        stmt = conn.createStatement();
                        String sql = "SELECT id, username, email, password FROM users";
                        rs = stmt.executeQuery(sql);

                        while (rs.next()) {
                            int id = rs.getInt("id");
                            String username = rs.getString("username");
                            String email = rs.getString("email");
                            String password = rs.getString("password");
                %>
                <tr>
                    <td><%= id %></td>
                    <td><%= username %></td>
                    <td><%= email %></td>
                    <td><%= password %></td>
                    <td>
                        <a href="editUser.jsp?id=<%= id %>" class="button edit">Edit</a>
                        <a href="adminDashboard.jsp?action=delete&id=<%= id %>" class="button delete" onclick="return confirm('Are you sure you want to delete this user?');">Delete</a>
                    </td>
                </tr>
                <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                        if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
                        if (stmt != null) try { stmt.close(); } catch (SQLException ignore) {}
                        if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
                    }
                %>
            </tbody>
        </table>
    </section>
</div>

</body>
</html>
