/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.Date;
import models.Account;

/**
 *
 * @author ADMIN
 */
public class SignupControl extends HttpServlet {

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
        DAO dao = new DAO();
        String userName = request.getParameter("userName");
        String fullName = request.getParameter("fullName");
        String dobStr = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String phoneNumber = request.getParameter("phoneNumber");
        String avatar = request.getParameter("avatar");
        String specialization = request.getParameter("specialization");
        String password = request.getParameter("password");
        String repeatPassword = request.getParameter("repeatPassword");

        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date dob = dateFormat.parse(dobStr);

            if (!password.equals(repeatPassword)) {
                request.setAttribute("messErrorPass", "Password and Re-Password must be the same");
                request.getRequestDispatcher("signup.jsp").forward(request, response);
            } else {
                Account existingAccount = dao.searchAccountByUsername(userName);
                if (existingAccount != null && existingAccount.getPassword() != null) {
                    request.setAttribute("messErrorUsername", "Bạn đã đăng ký rồi, không thể đăng ký lại.");
                    request.getRequestDispatcher("signup.jsp").forward(request, response);
                } else {
                    if (existingAccount == null) {
                        request.setAttribute("messErrorUsername", "Bạn không có quyền đăng ký");
                        request.getRequestDispatcher("signup.jsp").forward(request, response);
                    } else {
                        dao.updateAccount(userName, fullName, dob, gender, phoneNumber, avatar, specialization, password);
                        request.getRequestDispatcher("login").forward(request, response);
                    }
                }
            }
        } catch (Exception ex) {
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
