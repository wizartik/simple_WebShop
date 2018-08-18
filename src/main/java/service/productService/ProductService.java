package service.productService;

import dao.DataAbstractFactory;
import dao.ProductDAO;
import entity.Product;

import java.util.List;

public class ProductService {

    public List<Product> getProducts(String brand, String category){
        List<Product> products;

        ProductDAO productDAO = DataAbstractFactory.getFactory().getProductDAO();

        if (category != null){
            products = productDAO.getProducts(category);
        } else if (brand != null){
            products = productDAO.getProductsByBrand(brand);
        } else {
            products = productDAO.getAllProducts();
        }
        return products;
    }


    public Product getProduct(int id){
        ProductDAO productDAO = DataAbstractFactory.getFactory().getProductDAO();
        return productDAO.getProduct(id);
    }
}
