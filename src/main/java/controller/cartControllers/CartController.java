package controller.cartControllers;

import entity.Cart;
import service.cartService.CartService;
import service.productService.ProductService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class CartController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession();

        Cart cart = (Cart) session.getAttribute("cart");

        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }

        String cartView = req.getParameter("cartView");

        if (cartView == null) {
            Integer productId = Integer.valueOf(req.getParameter("productId"));
            int qnt = Integer.parseInt(req.getParameter("qnt"));

            CartService cartService = new CartService();
            ProductService productService = new ProductService();

            cartService.addProductsToCart(cart, productService.getProduct(productId), qnt);

            PrintWriter writer = resp.getWriter();
            writer.write("" + cart.productsQnt());
        } else {
            req.setAttribute("userCart", cart.getCart());
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
