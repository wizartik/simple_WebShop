package controller.productControllers;

import entity.Product;
import service.productService.ProductService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SingleProductController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idLine = req.getParameter("id");

        if (idLine != null) {
            int id = Integer.parseInt(idLine);
            ProductService productService = new ProductService();

            Product product = productService.getProduct(id);
            req.setAttribute("product", product);
            req.getRequestDispatcher("single.jsp").forward(req, resp);
        } else {
            resp.sendRedirect("/");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("/");
    }
}
