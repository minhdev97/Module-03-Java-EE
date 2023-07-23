package com.dailyvemaybay.controller;

import com.dailyvemaybay.dao.CustomerDao;
import com.dailyvemaybay.dto.CustomerDto;
import com.dailyvemaybay.service.AuthService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Objects;

@WebServlet(name = "LoginController", urlPatterns = { "/login", "/logout", "/", "","/register", "/updatePw"})
public class AuthController extends HttpServlet {
    private AuthService authService = new AuthService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getServletPath();

        switch (action) {
            case "/logout":
                if (request.getServletPath().startsWith("/logout")) {
                    request.getSession().removeAttribute("userLogged");
                }
                response.sendRedirect(request.getContextPath() + "/login");
                break;
            default:
                request.getRequestDispatcher("/WEB-INF/view/login/login.jsp").forward(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String account = request.getParameter("account");
        String password = request.getParameter("password");
        String action = request.getServletPath();
        HttpSession session = request.getSession();
        CustomerDao customerDao = new CustomerDao();
        CustomerDto customerDto = customerDao.get(account);
        switch (action) {
            case "/login":
                if(customerDto.getAccount() == null) {
                    request.setAttribute("loginFailedMessage", "Tài khoản không tồn tại");
                    request.getRequestDispatcher("/WEB-INF/view/login/login.jsp").forward(request, response);
                } else if (password.equals(customerDto.getPassword())) {
                    session.setAttribute("account", account);
                    session.setAttribute("password", password);
                    request.getRequestDispatcher("/WEB-INF/view/home/index.jsp").forward(request, response);
                } else {
                    request.setAttribute("loginFailedMessage", "Sai mật khẩu");
                    request.getRequestDispatcher("/WEB-INF/view/login/login.jsp").forward(request, response);
                }
                break;
            case "/register":
               if (account.equals(customerDto.getAccount())) {
                    request.setAttribute("registerStatus", "Tên đăng nhập đã tồn tại.");
                    request.getRequestDispatcher("/WEB-INF/view/login/login.jsp").forward(request, response);
                } else {
                   CustomerDto newAccount = new CustomerDto(account,password);
                   customerDao.insert(newAccount);
                   request.setAttribute("registerStatus", "Đăng ký tài khoản thành công");
                   request.getRequestDispatcher("/WEB-INF/view/login/login.jsp").forward(request, response);
                }
                break;
            case "/updatePw":
                customerDto = (CustomerDto) session.getAttribute("customerDto");
                String newPw = request.getParameter("newPw");
                String confirmPw = request.getParameter("confirmPw");
                String loggedAccount = (String) session.getAttribute("account");
                if (newPw != null && confirmPw != null) {
                    if (newPw.equals(confirmPw)) {
                        customerDao.update(new CustomerDto(loggedAccount, newPw));
                        request.setAttribute("statusPw", "Đổi mật khẩu thành công!");
                    } else {
                        request.setAttribute("statusPw", "Mật khẩu mới và mật khẩu xác nhận chưa khớp");
                    }
                    request.getRequestDispatcher("/WEB-INF/view/update/updatePw.jsp").forward(request, response);
                } else {
                    request.getRequestDispatcher("/WEB-INF/view/update/updatePw.jsp").forward(request, response);
                }
                break;
            default:
                break;
        }
    }
}
