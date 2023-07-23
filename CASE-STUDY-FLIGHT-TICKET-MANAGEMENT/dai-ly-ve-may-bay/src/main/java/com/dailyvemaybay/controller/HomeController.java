package com.dailyvemaybay.controller;

import com.dailyvemaybay.dao.CustomerDao;
import com.dailyvemaybay.dao.FlightTicketDao;
import com.dailyvemaybay.dto.CustomerDto;
import com.dailyvemaybay.dto.FlightTicketDto;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Date;

@WebServlet(name = "HomeController", urlPatterns = {"/home", "/customerInfos", "/checkInfos", "/updateFlight","/ticket", "/checkInfosAfterUpdate","/checkInfosAfterUpdateCustomerInfos", "/error", "/qrcode"})
public class HomeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getServletPath();
        switch (action) {
            case "/error":
                request.getRequestDispatcher("/WEB-INF/view/error/error.jsp").forward(request, response);
                break;
            case "/qrcode":
                request.getRequestDispatcher("/WEB-INF/view/QRcode/QRcode.jsp").forward(request, response);
                break;
            default:
                request.getRequestDispatcher("/WEB-INF/view/error/error.jsp").forward(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        String action = request.getServletPath();
        switch (action) {
            case "/customerInfos":
                String airline = request.getParameter("airline");
                String depart = request.getParameter("depart");
                String dest = request.getParameter("dest");
                String flightDate = request.getParameter("flightDate");
                String seat = request.getParameter("seat");
                int price = Integer.parseInt(request.getParameter("price"));
                String flightTime = request.getParameter("flightTime");
                String date = request.getParameter("date");
                String position = request.getParameter("position");
                session.setAttribute("airline", airline);
                session.setAttribute("depart", depart);
                session.setAttribute("dest", dest);
                session.setAttribute("seat", seat);
                session.setAttribute("date", date);
                session.setAttribute("flightTime", flightTime);
                session.setAttribute("position", position);
                session.setAttribute("price", price);
                request.getRequestDispatcher("/WEB-INF/view/home/customerInfos.jsp").forward(request, response);
                break;
            case "/updateFlight":
//                session.getAttribute("address");
//                session.getAttribute("phonenumber");
//                session.getAttribute("email");
//                session.getAttribute("birthday");
                request.getRequestDispatcher("/WEB-INF/view/update/updateFlight.jsp").forward(request, response);
                break;
            case "/checkInfos":
                String name = request.getParameter("name");
                String gender = request.getParameter("gender");
                String address = request.getParameter("address");
                String phonenumber = request.getParameter("phonenumber");
                String email = request.getParameter("email");
                String birthday = request.getParameter("birthday");
                session.setAttribute("name", name);
                session.setAttribute("gender", gender);
                session.setAttribute("address", address);
                session.setAttribute("phonenumber", phonenumber);
                session.setAttribute("email", email);
                session.setAttribute("birthday", birthday);
                request.getRequestDispatcher("/WEB-INF/view/check/checkInfos.jsp").forward(request, response);
                break;
            case "/ticket":
                String airlineInfo = (String) session.getAttribute("airline");
                String departInfo = (String) session.getAttribute("depart");
                String destInfo = (String) session.getAttribute("dest");
                String seatInfo = (String) session.getAttribute("seat");
                String dateInfo = (String) session.getAttribute("date");
                String flightTimeInfo = (String) session.getAttribute("flightTime");
                String positionInfo = (String) session.getAttribute("position");
                int priceInfo = (int) session.getAttribute("price");
                FlightTicketDto bookedTicket = new FlightTicketDto(positionInfo, airlineInfo, flightTimeInfo, seatInfo, departInfo, destInfo, priceInfo, dateInfo);
//                CustomerDao customerDao = new CustomerDao();
//                CustomerDto customerDto = customerDao.get(account);
                FlightTicketDao flightTicketDao = new FlightTicketDao();
                flightTicketDao.insert(bookedTicket);
                request.getRequestDispatcher("/WEB-INF/view/ticket/ticket.jsp").forward(request, response);
                break;
            case "/checkInfosAfterUpdate":
                airline = request.getParameter("airline");
                depart = request.getParameter("depart");
                dest = request.getParameter("dest");
                flightDate = request.getParameter("date");
                seat = request.getParameter("seat");
                price = Integer.parseInt(request.getParameter("price"));
                flightTime = request.getParameter("flightTime");
                date = request.getParameter("date");
                position = request.getParameter("position");
                session.setAttribute("airline", airline);
                session.setAttribute("depart", depart);
                session.setAttribute("dest", dest);
                session.setAttribute("seat", seat);
                session.setAttribute("date", date);
                session.setAttribute("flightTime", flightTime);
                session.setAttribute("position", position);
                session.setAttribute("price", price);
                request.getRequestDispatcher("/WEB-INF/view/check/checkInfos.jsp").forward(request, response);
                break;
            case "/checkInfosAfterUpdateCustomerInfos":
                request.getRequestDispatcher("/WEB-INF/view/home/customerInfos.jsp").forward(request, response);
                break;
            default:
                request.getRequestDispatcher("/WEB-INF/view/error/error.jsp").forward(request, response);
                break;
        }
    }

}
