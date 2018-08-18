package dao.mySQL;

import dao.DataAbstractFactory;
import dao.ProductDAO;
import dao.UserDAO;
import dao.util.Config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class FactoryMysql implements DataAbstractFactory {

    private Connection connection;

    public FactoryMysql(Config config) {
        connection = getConnection(config);
    }

    private Connection getConnection(Config config){
        Connection connection = null;

        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            connection = DriverManager.getConnection
                    ("jdbc:mysql://"+config.getHost()
                            +"?user="+config.getUser()
                            +"&password="+config.getPassword()+"");
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        return connection;
    }

    @Override
    public ProductDAO getProductDAO() {
        return new ProductMysqlDao(connection);
    }

    @Override
    public UserDAO getUserDAO() {
        return new UserMysqlDao(connection);
    }
}
