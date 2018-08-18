package controller.userControllers;

import entity.User;
import service.userService.UserService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession();

        User user = (User) session.getAttribute("user");

        if (user == null){
            String email = req.getParameter("Email");
            String password = req.getParameter("Password");

            UserService userService = new UserService();
            User login = userService.login(email, password);

            if (login != null){
                session.setAttribute("user", login);
            }
        }

        resp.sendRedirect("/");
    }
}
