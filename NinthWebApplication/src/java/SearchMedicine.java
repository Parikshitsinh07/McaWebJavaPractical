/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import classes.Medicine;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 91942
 */
public class SearchMedicine extends HttpServlet {

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

        ArrayList<Medicine> medicineList = new ArrayList<Medicine>();

        String jdbcURL = "jdbc:mysql://localhost:3306/parikshit_20";
        String dbUser = "root";
        String dbPassword = "";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            String searchName = request.getParameter("searchmedicine");
            String searchKeyword = request.getParameter("searchKeyword");

            String sql = "";
            if ("medicine_name".equals(searchName)) {
                sql = "SELECT id, medicine_name, medicine_details, manufacturer_name, batch_no, CONCAT(DATE_FORMAT(manufacturing_month_year, '%M'), ' ', DATE_FORMAT(manufacturing_month_year, '%Y')) AS manufacturing_month_year,  CONCAT(DATE_FORMAT(expiry_month_year, '%M'), ' ', DATE_FORMAT(expiry_month_year, '%Y')) AS expiry_month_year FROM medicine WHERE medicine_name LIKE ?";
            } else if ("manufacturer_name".equals(searchName)) {
                sql = "SELECT id, medicine_name, medicine_details, manufacturer_name, batch_no, CONCAT(DATE_FORMAT(manufacturing_month_year, '%M'), ' ', DATE_FORMAT(manufacturing_month_year, '%Y')) AS manufacturing_month_year,  CONCAT(DATE_FORMAT(expiry_month_year, '%M'), ' ', DATE_FORMAT(expiry_month_year, '%Y')) AS expiry_month_year FROM medicine WHERE manufacturer_name LIKE ?";
            }

            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, "%" + searchKeyword + "%");

            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                int medicineId = resultSet.getInt("id");
                String medicineName = resultSet.getString("medicine_name");
                String medicineDetails = resultSet.getString("medicine_details");
                String manufacturerName = resultSet.getString("manufacturer_name");
                String batchNo = resultSet.getString("batch_no");
                String manufacturingMonthYear = resultSet.getString("manufacturing_month_year");
                String expiryMonthYear = resultSet.getString("expiry_month_year");

                Medicine medicine = new Medicine(medicineId, medicineName, medicineDetails, manufacturerName, batchNo, manufacturingMonthYear, expiryMonthYear);
                medicineList.add(medicine);
            }

            resultSet.close();
            statement.close();
            connection.close();
        } catch (ClassNotFoundException cnfe){
            cnfe.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("medicineList", medicineList);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

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
    }

}
