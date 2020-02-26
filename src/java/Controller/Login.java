/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.CoffeeModel;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author M.Dani Setiawan
 */
public class Login extends HttpServlet {

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
        String proses=request.getParameter("proses");
        if (proses.equals("logout")){
            HttpSession sesi=request.getSession();
            sesi.invalidate();
            response.sendRedirect("logutsukses.jsp");
        }
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
        String proses = request.getParameter("proses");
         
        if (proses.equals("login")) {
            String id_akun=request.getParameter("id_akun");
            String nama = request.getParameter("nama");
            String email = request.getParameter("email");
            String password_akun = request.getParameter("password_akun");
            
            
            if (password_akun == null || password_akun.equals("")) {   //validasi apabila field belum diisi
                response.sendRedirect("gagalloginblmdiisi.jsp");
            } else {
                CoffeeModel pm = new CoffeeModel();
                List<CoffeeModel> datalogin = new ArrayList<CoffeeModel>();
 
                datalogin = pm.LoginUser(email, password_akun);
                if (datalogin.isEmpty()) { //validasi apabila username dan password salah
                        response.sendRedirect("login.jsp");
                } else {
                    HttpSession session = request.getSession(true);
                    session.setAttribute("id_akun", datalogin.get(0).getId_akun());
                    session.setAttribute("nama", datalogin.get(0).getNama());
                    session.setAttribute("email", datalogin.get(0).getEmail());
                    response.sendRedirect("buycoffee.jsp");
                }
            }
        }
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
