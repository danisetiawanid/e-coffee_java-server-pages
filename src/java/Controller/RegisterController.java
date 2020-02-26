/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.CoffeeModel;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author M.Dani Setiawan
 */
public class RegisterController extends HttpServlet {

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
        String action=request.getParameter("action");
        if (proses.equals("input-user")){
            response.sendRedirect("login.jsp");
            return;
        }else if (proses.equals("edit-user")){
            response.sendRedirect("editakun.jsp?id_akun="+request.getParameter("id_akun"));
            return;
        }else if (proses.equals("hapus-user")){
            CoffeeModel hm=new CoffeeModel();
            hm.setId_akun(request.getParameter("id_akun"));
            hm.hapus_akun();
            response.sendRedirect("tablesakun.jsp");
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
        String data = request.getParameter("data");
        String proses = request.getParameter("proses");
            {
                CoffeeModel am=new CoffeeModel();
                am.setId_akun(request.getParameter("id_akun"));    
                am.setNama(request.getParameter("nama"));        
                am.setEmail(request.getParameter("email"));
                am.setPassword_akun(request.getParameter("password_akun"));
                if (proses.equals("input-user")){
                    am.simpan_akun();
                    response.sendRedirect("login.jsp");
                    return;
                }else if (proses.equals("update-user")){
                    am.update_akun();
                 }else if(proses.equals("hapus-user")){
                    am.hapus_akun();
                }
                response.sendRedirect("tablesakun.jsp"); 
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
