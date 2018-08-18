package dao;

import entity.Product;

import java.util.List;

public interface ProductDAO {

    List<Product> getAllProducts();

    List<Product> getProducts(String category);

    List<Product> getProductsByBrand(String brand);

    Product getProduct(String name);

    Product getProduct(long id);

}
