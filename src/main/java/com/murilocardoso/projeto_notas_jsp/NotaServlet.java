package com.murilocardoso.projeto_notas_jsp;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "notaServlet", value = "/notaServlet")
public class NotaServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       double nota1 = Double.parseDouble(request.getParameter("nota1"));
       double nota2 = Double.parseDouble(request.getParameter("nota2"));
       double media = (nota1 + nota2) / 2;

       request.setAttribute("nota1", nota1);
       request.setAttribute("nota2", nota2);
       request.setAttribute("media", media);

       request.getRequestDispatcher("resultado.jsp").forward(request, response);
   }
}