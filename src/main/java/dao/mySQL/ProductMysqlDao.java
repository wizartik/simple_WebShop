package dao.mySQL;

import dao.ProductDAO;
import entity.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static dao.util.Util.closeStuff;

public class ProductMysqlDao implements ProductDAO {
    private Connection connection;

    public ProductMysqlDao(Connection connection) {
        this.connection = connection;
    }


    @Override
    public List<Product> getAllProducts() {
        ArrayList<Product> products = null;
        String sql = "SELECT id, name, category, description, brand, price " +
                "FROM products";

        ResultSet resultSet = null;
        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            resultSet = preparedStatement.executeQuery();
            products = getProductList(resultSet);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeStuff(resultSet);
        }

        return products;
    }

    @Override
    public List<Product> getProducts(String category) {
        ArrayList<Product> products = null;
        String sql = "SELECT id, name, category, description, brand, price " +
                "FROM products WHERE products.category LIKE ?";

        ResultSet resultSet = null;
        try (PreparedStatement preparedStatement = connection
                .prepareStatement(sql)){
            preparedStatement.setString(1, category.toLowerCase() + "%");
            resultSet = preparedStatement.executeQuery();
            products = getProductList(resultSet);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeStuff(resultSet);
        }

        return products;
    }

    @Override
    public Product getProduct(String name) {
        Product product = null;

        String sql = "SELECT id, name, category, description, brand, price " +
                "FROM products WHERE name = ?";

        ResultSet resultSet = null;
        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setString(1, name);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                product = makeProduct(resultSet);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeStuff(resultSet);
        }
        return product;
    }

    @Override
    public Product getProduct(long id) {
        Product product = null;

        String sql = "SELECT id, name, category, description, brand, price " +
                "FROM products WHERE id = ?";

        ResultSet resultSet = null;
        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setLong(1, id);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                product = makeProduct(resultSet);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeStuff(resultSet);
        }
        return product;
    }

    @Override
    public List<Product> getProductsByBrand(String brand) {
        ArrayList<Product> products = null;
        String sql = "SELECT id, name, category, description, brand, price " +
                "FROM products WHERE products.brand LIKE ?";

        ResultSet resultSet = null;
        try (PreparedStatement preparedStatement = connection
                .prepareStatement(sql)){
            preparedStatement.setString(1, brand);
            resultSet = preparedStatement.executeQuery();
            products = getProductList(resultSet);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeStuff(resultSet);
        }

        return products;
    }

    @Override
    protected void finalize() throws Throwable {
        closeStuff(connection);
    }

    private ArrayList<Product> getProductList(ResultSet resultSet) throws
            SQLException {
        ArrayList<Product> products = new ArrayList<>();

        while (resultSet.next()) {
            products.add(makeProduct(resultSet));
        }

        return products;
    }

    private Product makeProduct(ResultSet resultSet) throws SQLException {
        Product product = new Product();

        product.setId(resultSet.getLong("id"));
        product.setName(resultSet.getString("name"));
        product.setCategory(resultSet.getString("category"));
        product.setDescription(resultSet.getString("description"));
        product.setBrand(resultSet.getString("brand"));
        product.setPrice(resultSet.getDouble("price"));
        return product;
    }
}
