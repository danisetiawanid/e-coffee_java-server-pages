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
public class TransactionController extends HttpServlet {

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
        if (proses.equals("input-transaction")){
            response.sendRedirect("berhasilinput.jsp");
            return;
        }else if (proses.equals("edit-transaction")){
            response.sendRedirect("edittransaction.jsp?id_transaction="+request.getParameter("id_transaction"));
            return;
        }else if (proses.equals("hapus-transaction")){
            CoffeeModel hm=new CoffeeModel();
            hm.setId_transaction(request.getParameter("id_transaction"));
            hm.hapus_transaction();
            response.sendRedirect("tablestransaction.jsp");
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
                CoffeeModel zm = new CoffeeModel();
                zm.setId_transaction(request.getParameter("id_transaction"));    
                zm.setId_akun(request.getParameter("id_akun"));        
                zm.setId_coffee(request.getParameter("id_coffee"));
                zm.setNama(request.getParameter("nama"));
                zm.setCoffee_name(request.getParameter("coffee_name"));
                zm.setPrice(request.getParameter("price"));
                zm.setQty(request.getParameter("qty"));
                zm.setTotal_price(request.getParameter("total_price"));
                zm.setAddress(request.getParameter("address"));  
                zm.setDate_of_purchase(request.getParameter("date_of_purchase"));
                if (proses.equals("input-transaction")){
                    zm.simpan_transaction();
                    response.sendRedirect("buycoffee.jsp");
                    return;
                }else if (proses.equals("update-transaction")){
                    zm.update_transaction();
                 }else if(proses.equals("hapus-transaction")){
                    zm.hapus_transaction();
                }
                response.sendRedirect("tablestransaction.jsp"); 
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
