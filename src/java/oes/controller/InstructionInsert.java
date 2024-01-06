/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package oes.controller;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import oes.db.Instructions;
import oes.model.InstructionsDao;

/**
 *
 * @author adrianadewunmi
 */

@WebServlet("/oes.controller.InstructionInsert")

public class InstructionInsert extends HttpServlet {
    
    private static final long serialVersionUID = 1L;

    public InstructionInsert() {
        super();
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
        
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        
        String instruction = request.getParameter("inst");
        
        Instructions ist = new Instructions();
        ist.setInstruction(instruction);
        //ist.getInstruction();
        
        boolean status = InstructionsDao.insertInstruction(ist);
        
        if(status){
            String msg1 = "Instruction Added!";
            response.sendRedirect("AddInstruction.jsp?msg1="+msg1);
        }else{
              String msg2 = "Instruction Not Added!";
              response.sendRedirect("AddInstruction.jsp?msg2="+msg2);  
        }
           
    }
    
}
