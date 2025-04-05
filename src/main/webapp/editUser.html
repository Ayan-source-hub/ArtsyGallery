<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit User</title>
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
        .form-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .form-container h2 {
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .form-group input {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 15px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-top: 10px;
            cursor: pointer;
            border-radius: 5px;
        }
        .button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<div class="header">
    <h1>Edit User</h1>
</div>

<div class="form-container">
    <h2>Edit User Details</h2>

    <% 
        int userId = Integer.parseInt(request.getParameter("id"));
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        String username = "";
        String email = "";
        String password = "";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/batch2?user=root&password=admin");

            String query = "SELECT username, email, password FROM users WHERE id = ?";
            pstmt = conn.prepareStatement(query);
            pstmt.setInt(1, userId);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                username = rs.getString("username");
                email = rs.getString("email");
                password = rs.getString("password");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
            if (pstmt != null) try { pstmt.close(); } catch (SQLException ignore) {}
            if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
        }
    %>

    <form method="post" action="editUser.jsp">
        <input type="hidden" name="id" value="<%= userId %>">
        <div class="form-group">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" value="<%= username %>" required>
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" value="<%= email %>" required>
        </div>
        <div class="form-group">
            <label for="role">Password</label>
            <input type="text" id="password" name="password" value="<%= password %>" required>
        </div>
        <button type="submit" class="button">Save Changes</button>
    </form>

    <% 
        if ("POST".equalsIgnoreCase(request.getMethod())) {
            String newUsername = request.getParameter("username");
            String newEmail = request.getParameter("email");
            String newPassword = request.getParameter("password");

            try {
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/batch2?user=root&password=admin");

                String updateQuery = "UPDATE users SET username = ?, email = ?, password = ? WHERE id = ?";
                pstmt = conn.prepareStatement(updateQuery);
                pstmt.setString(1, newUsername);
                pstmt.setString(2, newEmail);
                pstmt.setString(3, newPassword);
                pstmt.setInt(4, userId);

                int rowsUpdated = pstmt.executeUpdate();
                if (rowsUpdated > 0) {
                    out.println("<p>User updated successfully!</p>");
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (pstmt != null) try { pstmt.close(); } catch (SQLException ignore) {}
                if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
            }
        }
    %>
</div>

</body>
</html>
