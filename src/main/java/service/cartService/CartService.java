package service.cartService;

import entity.Cart;
import entity.Product;

public class CartService {

    public void addProductsToCart(Cart cart, Product product, int qnt){
        cart.addProducts(product, qnt);
    }
}
