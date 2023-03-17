/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import DAO.ProductDAO;
import com.oracle.wls.shaded.org.apache.bcel.generic.AALOAD;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import modal.Product;
import modal.ProductCart;

/**
 *
 * @author User
 */
@WebServlet(name="CartServlet", urlPatterns={"/CartServlet"})
public class CartServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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
            out.println("<title>Servlet CartServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CartServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        HttpSession session = request.getSession();
        List<ProductCart> cart = (List<ProductCart>) session.getAttribute("cart");
        Double total = 0.0;
        ProductDAO d = new ProductDAO();
        Product p = d.getProductById(id);
        boolean check = false;
        int size = 0;
        ProductCart pc;
//        pc = new ProductCart(p.getProductID(), price, 
//                p.getCategoryID(), 1, p.getProductName(), "Color",
//                p.getDescription(), p.getImage());
        pc = new ProductCart(
        p.getProductID(), p.getCategoryID(),1, p.getProductName(), 
        p.getDescription(), p.getImage(), p.getPrice());
        if (cart.size() == 0) {
            cart.add(pc);
        } else {
            for (ProductCart productCart : cart) {
                if (productCart.getProductId() == id) {
                    productCart.setQuality(productCart.getQuality() + 1);
                    check = true;
                }
            }
            if (check == false) {
                cart.add(pc);
            }
        }

        for (ProductCart productCart : cart) {
            total += productCart.getQuality() * Integer.parseInt(productCart.getPrice());
            size += productCart.getQuality();
        }

        session.setAttribute("countCar", size);
        session.setAttribute("cart", cart);
        session.setAttribute("total", total);
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().print(pc);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        HttpSession session = request.getSession();
        List<ProductCart> cart = (List<ProductCart>) session.getAttribute("cart");
        Double total = 0.0;
        int size = 0;
            for (ProductCart productCart : cart) {
                if (productCart.getProductId() == id) {
                    cart.remove(productCart);
                    break;
                }
            }

        for (ProductCart productCart : cart) {
            total += productCart.getQuality() * Integer.parseInt(productCart.getPrice());
            size += productCart.getQuality();
        }

        session.setAttribute("countCar", size);
        session.setAttribute("cart", cart);
        session.setAttribute("total", total);
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().print("success");
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
