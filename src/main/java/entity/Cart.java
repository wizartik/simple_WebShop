package entity;

import java.util.HashMap;
import java.util.Map;

public class Cart {
    private HashMap<Product, Integer> cart;

    public HashMap<Product, Integer> getCart() {
        return cart;
    }

    public Cart() {
        cart = new HashMap<>();
    }

    public void addProduct(Product product) {
        if (cart.containsKey(product)){
            cart.put(product, cart.get(product) + 1);
        } else {
            cart.put(product, 1);
        }
    }

    public void addProducts(Product product, int qnt){
        for (int i = 0; i < qnt; i++) {
            addProduct(product);
        }
    }

    public void removeProduct(Product product) {
        Integer qnt = cart.get(product);

        if (qnt != null){
            if (qnt > 1){
                cart.put(product, --qnt);
            } else {
                cart.remove(product);
            }
        }
    }

    public int productsQnt(){
        int qnt = 0;

        for (Map.Entry<Product, Integer> entry:
                cart.entrySet()) {
            qnt += entry.getValue();
        }
        return qnt;
    }
}
