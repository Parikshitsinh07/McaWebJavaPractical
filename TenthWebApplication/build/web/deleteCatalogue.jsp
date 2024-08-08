<%-- 
    Document   : deleteCatalogue
    Created on : 21-Mar-2024, 8:42:37 AM
    Author     : 91942
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String catalogueId = request.getParameter("id");

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/parikshit_20", "root", "");

        String sql = "DELETE FROM catalogue WHERE catalogueId = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, catalogueId);

        int rowsAffected = pstmt.executeUpdate();

        response.sendRedirect("showCatalogue.jsp");
    } catch (SQLException e) {
        e.printStackTrace();
    } catch (ClassNotFoundException e) {
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
