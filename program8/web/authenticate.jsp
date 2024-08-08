

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,javax.servlet.http.HttpSession,javax.servlet.RequestDispatcher" %>

<%
    String email=request.getParameter("email");
    String password=request.getParameter("password");
    
    RequestDispatcher rd=null;
    HttpSession hs=request.getSession();
    
  

if (email == null || email.isEmpty() || password == null || password.isEmpty()) 
    {
        request.setAttribute("error", "Email and password are required.");
        rd = request.getRequestDispatcher("index.jsp");
    }
    else 
    {
        String roleName = authenticateUser(email, password);
        if (roleName != null) {
            hs.setAttribute("email", email);
           hs.setAttribute("roleName", roleName);
            if (roleName.equals("Admin")) {
%>
<jsp:forward page="admin.jsp" />

<%
            }
        else 
    {
%>

    <jsp:forward page="welcome.jsp" />
    
<%
            }
        } else {
            request.setAttribute("error", "Invalid email or password.");
            rd = request.getRequestDispatcher("index.jsp");
        }
    }
    rd.forward(request, response); 
%>

<%!
private String authenticateUser(String email, String password) {
    String roleName = null;
                String query="SELECT user_role.Role_Name FROM user JOIN user_role ON user.UserRole_Id = user_role.UserRole_Id WHERE Email = ? AND Password = ?";
       try {
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/students";
        String username = "root";
        String dbPassword = "";
        try (Connection connection = DriverManager.getConnection(url, username, dbPassword);
             PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, email);
            statement.setString(2, password);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) 
            {
                roleName = resultSet.getString("role_name");
            }
        } 
            catch (SQLException e)
            {
            e.printStackTrace();
             }
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    return roleName;
}
%>

