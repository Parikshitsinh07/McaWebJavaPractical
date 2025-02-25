/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Hetvi Dasadiya
 */
public class RequestHeaderServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>RequestHeaders</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Request Header:</h1>");
            out.println("<table>");
            Enumeration e = request.getHeaderNames();
            while (e.hasMoreElements()) {
                String name = (String) e.nextElement();
                String value = request.getHeader(name);
                out.println("<tr><td bgcolor='#12CABE'>" + name + "</td><td>" + value + "</td></tr>");
            }
            out.println("</table>");

            out.println("<h1>Client/Browser Information:</h1>");
            out.println("<h3>" + "Remote Address :" + request.getRemoteAddr() + "<h3>");
            out.println("<h3>" + "Remote Host :" + request.getRemoteHost() + "<h3>");
            out.println("<h3>" + "Remote Port :" + request.getRemotePort() + "<h3>");
             out.println("<h3>" + "Client PathInfo :" + request.getPathInfo() + "<h3>");
              out.println("<h3>" + "Request Url :" + request.getContextPath() + "<h3>");
            
            out.println("<h1>Server Information:</h1>");
            out.println("<h3>" + "Server Name:" + request.getServerName() + "<h3>");
            out.println("<h3>" + "Server Port :" + request.getServerPort() + "<h3>");
            out.println("</body>");
            out.println("</html>");
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
