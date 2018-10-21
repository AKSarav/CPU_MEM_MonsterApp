/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.middlewareinventory.sarav;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author aksarav
 */
@WebServlet(name = "MemServlet", urlPatterns = {"/MemMonster.do"})
public class MemServlet extends HttpServlet {

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
            throws ServletException, IOException, InterruptedException {
        
        RequestDispatcher view = request.getRequestDispatcher("Output.jsp?MN=MM");
        view.forward(request, response);
        
        //Invoke the monster finally
        com.middlewareinventory.sarav.MemMonster OBJM = new com.middlewareinventory.sarav.MemMonster();
        
        
        String NoOfThreads=request.getParameter("NoOfThreads");
        String MMPT=request.getParameter("MMPT");
        String MBPerBite=request.getParameter("MBPerBite");
        String Sleeptime=request.getParameter("Sleeptime");
            
            //Invoke the monster finally
            
            int maxthread=Integer.parseInt(NoOfThreads)+1;
            
            for (int i=1;i<maxthread;i++)
            {
                System.out.println("Creating a new thread at MemoryServlet");
                XThread xThread = new com.middlewareinventory.sarav.XThread();
                xThread.startNewMemoryMonsterThread(MMPT,MBPerBite,Sleeptime);
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
        try {
            processRequest(request, response);
        } catch (InterruptedException ex) {
            Logger.getLogger(MemServlet.class.getName()).log(Level.SEVERE, null, ex);
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
        try {
            processRequest(request, response);
        } catch (InterruptedException ex) {
            Logger.getLogger(MemServlet.class.getName()).log(Level.SEVERE, null, ex);
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
