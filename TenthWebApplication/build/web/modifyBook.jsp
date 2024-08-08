<%-- 
    Document   : modifyBook
    Created on : 21-Mar-2024, 9:41:58 AM
    Author     : 91942
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.io.PrintWriter, java.util.Date" %>
<%
    String bookId = request.getParameter("bookId");
    String catalogueId = request.getParameter("catalogueId");
    String bookTitle = request.getParameter("bookTitle");
    String authorName = request.getParameter("authorName");
    String price = request.getParameter("price");
    String quantity = request.getParameter("quantity");
    String isbn = request.getParameter("isbn");
    String publisher = request.getParameter("publisher");
    String editionYear = request.getParameter("editionYear");

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/parikshit_20", "root", "");

        String sql = "UPDATE book SET categogueId = ?, title = ?, author = ?, price = ?, quantity = ?, ISBN = ?, publisher = ?, editionYear = ? WHERE bookId = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, Integer.parseInt(catalogueId));
        pstmt.setString(2, bookTitle);
        pstmt.setString(3, authorName);
        pstmt.setString(4, price);
        pstmt.setString(5, quantity);
        pstmt.setString(6, isbn);
        pstmt.setString(7, publisher);
        pstmt.setString(8, editionYear);
        pstmt.setInt(9, Integer.parseInt(bookId));

        int rowsAffected = pstmt.executeUpdate();

        response.sendRedirect("showBook.jsp");

    } catch (ClassNotFoundException | SQLException e) {
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
