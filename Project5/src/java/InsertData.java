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
public class InsertData extends HttpServlet {

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
            String Fname = request.getParameter("first_name");
            String Lname = request.getParameter("last_name");
            String Email = request.getParameter("email");
            String Bod = request.getParameter("date_of_birth");
            String course = request.getParameter("course");
            int row = 0;
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/students", "root", "");
            ps = con.prepareStatement("select * from student_info where email=?");
            ps.setString(1, Email);
            rs = ps.executeQuery();
            if (rs.next()) {
                out.println("<h1>duplicate id not allowed</h1>");
//                    out.println("<script>");
//                    out.println("alert('duplicate id not allowed')");
//                    out.println("window.location='index.jsp'");
//                    out.println("</script>");
            } else {
                ps = con.prepareStatement("insert into student_info(`first_name`, `last_name`, `email`, `date_of_birth`, `course`) values(?,?,?,?,?)");
                ps.setString(1, Fname);
                ps.setString(2, Lname);
                ps.setString(3, Email);
                ps.setString(4, Bod);
                ps.setString(5, course);
                row = ps.executeUpdate();
                ps = con.prepareStatement("select * from student_info where email=?");
                ps.setString(1, Email);
                rs = ps.executeQuery();
                if (rs.next()) {
                    out.println("<h1>Data submitted successfully!</h1>");
                    out.print("Your REGISTRATION number is " + rs.getInt(1));
                }
//                      out.println("<a href='Showdata'> Show data </a>")
//                      response.sendRedirect("viewdata");
            }
            /* TODO output your page here. You may use following sample code. */
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
