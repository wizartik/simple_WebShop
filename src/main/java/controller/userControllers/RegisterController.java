package controller.userControllers;

import entity.User;
import service.userService.UserService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class RegisterController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession();

        User currUser = (User) session.getAttribute("user");

        if (currUser == null) {

            String name = req.getParameter("Name");
            String email = req.getParameter("Email");
            String password = req.getParameter("Password");

            UserService userService = new UserService();
            User user = userService.createUser(email, email, name, password);
            if (userService.registerUser(user).equals("ok")) {
                session.setAttribute("user", user);
            }
        }
        resp.sendRedirect("/");
    }
}
