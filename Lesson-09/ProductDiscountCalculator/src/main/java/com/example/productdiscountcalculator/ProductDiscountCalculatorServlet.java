package com.example.productdiscountcalculator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ProductDiscountCalculatorServlet", value = "/ProductDiscountCalculatorServlet")
public class ProductDiscountCalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ProductDescription = request.getParameter("Product Description");
        double price = Double.parseDouble(request.getParameter("List Price"));
        double Discount = Double.parseDouble(request.getParameter("Discount Percent"));
        double DiscountAmount = price * Discount * 0.01;
        double DiscountPrice = price - DiscountAmount;

        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.print("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
        writer.println("<h1>Product: " + ProductDescription + "</h1>");
        writer.println("<h1>Discount Amount: " + DiscountAmount + "VND</h1>");
        writer.println("<h1>Discount Price: " + DiscountPrice + "VND</h1>");
        writer.println("</html>");
    }
}
