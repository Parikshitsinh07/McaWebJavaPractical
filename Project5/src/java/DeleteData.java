/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
/**
 *
 * @author Admin
 */
public class DeleteData extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        Statement st;
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet InsertData</title>");
            out.println("<style>"
                    + "div{"
                    + "    width: 40%;\n"
                    + "    margin: 22% auto;"
                    + "    color:white;}"
                    + "a{"
                    + "text-decoration: none;\n"
                    + " border: 2px solid black;\n"
                    + "padding: 10px;\n"
                    + "background-color: #4dcf42;\n"
                    + "color: white;"
                    + " border-radius: 10px;"
                    + "  display: block;"
                    + "width: 20%;"
                    + "margin: 10px 0px;}"
                    + "</style>");
            out.println("</head>");
            out.println("<body style=\"background-color:#1d415e\">");
            out.println("<div>");
            int Std_id = Integer.parseInt(request.getParameter("std_id"));
            int row = 0;
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/students", "root", "");
             ps=con.prepareStatement("delete from student_info where id=?");
            ps.setInt(1,Std_id );
            row = ps.executeUpdate();
            if (row == 0) {
                out.println("<h1>Data Notdelete successfully!</h1>");
            
            }
            else{
                 out.println("<h1>Data delete successfully!</h1>");
                
            }
             out.println("<br><a href=\'http://localhost:8080/Project5/Showdata'>Show data</a>");
            out.println("</div>");
            out.println("</body>");
            out.println("</html>");
        } catch (ClassNotFoundException ce) {
            ce.printStackTrace();
        } catch (SQLException se) {
            se.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
