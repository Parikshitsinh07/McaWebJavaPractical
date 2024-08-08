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

/**
 *
 * @author Admin
 */
public class CompundInterst extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
             int PrincipalAmount= 0;
             if(Integer.parseInt(request.getParameter("PrincipalAmount"))>0){
                 PrincipalAmount=Integer.parseInt(request.getParameter("PrincipalAmount"));
             }
            double rate=0;
            if(Double.parseDouble(request.getParameter("rate"))>0){
                rate = Double.parseDouble(request.getParameter("rate"));
            }
            int year = 0;
            if(Integer.parseInt(request.getParameter("year"))>0){
                year = Integer.parseInt(request.getParameter("year"));
            }
            int month = 0;
                if(Integer.parseInt(request.getParameter("month"))>0){
                    month = Integer.parseInt(request.getParameter("month"));
                }
            int CompoundInterval=Integer.parseInt(request.getParameter("CompoundInterval"));
            
            int t1=month +(year*12);
            
            double t = 1;
            if(t1>0){
               t = t1/12;
            }
            double n = 1;
                if(t>0){
                    n = CompoundInterval/t;
                }
            double nt = n*t;
            double power = Math.pow((1+rate/(n*100)),nt);
            double interest=power*PrincipalAmount;
            System.out.println("amount"+PrincipalAmount);
            System.out.println("Rate"+rate);
            System.out.println("Year"+year);
            System.out.println("Month"+month);
            System.out.println("t1"+t1);
            System.out.println("t"+t);
            System.out.println("n"+n);
             System.out.println("power"+power);
             //System.out.println(interest);
            System.out.println("Interest is :"+interest);
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Firstservlet</title>"); 
            out.println("<style>"
                    +"label{"
                  
                  +"width:100%;"
                  +"margin-top:10px;"
                  +"margin-bottom:5px;"
                  +"font-style: bold;"
                  +"color: #555;}"
                    
                    +"body{"
                    +"font-family: sans-serif;}"
                    
                    +".main{"
                +"border:1px solid #ddd;"
                +"border-radius:5px;"
                +"width:400px;"
                +"margin-bottom:50px;"
                +"margin-right: 50px;"
                +"margin-left: 400px;"
                +"margin-top:120px;"
                +"background-color:white;"
                +"height:300px;}"
                    
                 +".tdv{"
                  +"margin-left:90px;"
                  +"font-style: bold;"
                  +"color: #555;"
                  +"align: center;"
                  +"margin-bottom:15px;"
                  +"font-size:30px;}"
                    
                 +"table{"
                +"margin-left:120px;"
                +"margin-top:60px;}"
            
                    + "</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<div class='main'>");
            out.println("<table>"
                          +"<div class='tdv'>Compound Intrest</div>"
                          +"<tr>"
                          +"<td>Principal Amount</td>"
                          +"<td>"+PrincipalAmount+"</td>"  
                          + "</tr>"
                          +"<tr>"
                          +"<td>Intrest Rate %</td>"
                          +"<td>"+rate+"</td>"  
                          + "</tr>"
                          +"<tr>"
                          +"<td>Year</td>"
                          +"<td>"+year+"</td>"  
                          + "</tr>"
                          +"<tr>"
                          +"<td>Month</td>"
                          +"<td>"+month+"</td>"  
                          + "</tr>"
                          +"<tr>"
                          +"<td>Compound Interval</td>"
                          +"<td>"+CompoundInterval+"</td>"  
                          + "</tr>"
                          +"<tr>"
                          +"<td>Compound Intrest</td>"
                          +"<td>"+interest+"</td>"  
                          + "</tr>"
                    + "</table>");
            out.println("<div>");
            //out.println(amount+" "+rate+" "+year+" "+months+" "+calintrval);
           //out.print("<p>hello</p>");
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
