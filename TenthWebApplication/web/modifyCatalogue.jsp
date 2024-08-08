<%-- 
    Document   : modifyCatalogue
    Created on : 21-Mar-2024, 9:41:31 AM
    Author     : 91942
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String catalogueId = request.getParameter("catalogueId");
    String catalogueTitle = request.getParameter("catalogueTitle");
    String catalogueDescription = request.getParameter("catalogueDescription");

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/parikshit_20", "root", "");

        String sql = "UPDATE catalogue SET title = ?, description = ? WHERE categogueId = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, catalogueTitle);
        pstmt.setString(2, catalogueDescription);
        pstmt.setInt(3, Integer.parseInt(catalogueId));

        int rowsAffected = pstmt.executeUpdate();

        response.sendRedirect("showCatalogue.jsp");
    } catch (SQLException | ClassNotFoundException e) {
        e.printStackTrace();
    } finally {
        try {
            if (pstmt != null) {
                pstmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
