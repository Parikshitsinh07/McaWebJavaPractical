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
public class Showdata extends HttpServlet {

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
        ResultSet rs;
        Statement st;
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/students", "root", "");
            st = con.createStatement();
            rs = st.executeQuery("SELECT * FROM student_info");

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Showdata</title>");
            out.println("<style>"
                    + "div{"
                    + "    width: 70%;\n"
                    + "    margin: 22% auto;}"
                    + "table ,td ,th{"
                    + "border: 2px solid black;"
                    + "margin:0px;"
                    + "padding:5px;"
                    + "color:white}"
                    + "a{"
                    + "text-decoration: none;\n"
                    + " border: 2px solid black;\n"
                    + "padding: 10px;\n"
                    + "background-color: #4dcf42;\n"
                    + "color: white;"
                    + "    border-radius: 10px}"
                    +"span{"
                    +"display: flex}"
                    + "</style>");
            out.println("</head>");
            out.println("<body style=\"background-color:#1d415e\">");
            if (rs != null) {
                out.println("<div> <table>"
                        + "             <tr>"
                        + "                <th>REGISTRATION No </th>"
                        + "                <th>first_name </th>"
                        + "                <th>last_name </th>"
                        + "                <th>Email</th>"
                        + "                <th>date_of_birth</th>"
                        + "                <th>course</th>"
                        + "            </tr>");
                while (rs.next()) {
                    out.println("<tr><td>" + rs.getInt(1) + "</td>");
                    out.println("<td>" + rs.getString(2) + "</td>");
                    out.println("<td>" + rs.getString(3) + "</td>");
                    out.println("<td>" + rs.getString(4) + "</td>");
                    out.println("<td>" + rs.getString(5) + "</td>");
                    out.println("<td>" + rs.getString(6) + "</td></tr>");
                }
                out.println("</table>"
                        + "<br><span><a href=\'http://localhost:8080/Project5/Update.jsp'>Update data</a></span>"
                        +"<br><span><a id=\"del\" href=\'http://localhost:8080/Project5/Delete.jsp'>Delete data</a></span>"
                        + "</div>");
            } else {
                out.println("<div><h1> Somthing Worng Please Checks </h1></div>");
            }
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
