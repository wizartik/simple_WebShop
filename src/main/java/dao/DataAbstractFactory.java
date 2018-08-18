package dao;

import dao.mySQL.FactoryMysql;
import dao.util.Config;
import dao.util.Util;

public interface DataAbstractFactory {

    static DataAbstractFactory getFactory() {
        Config config = Util.createConfig();

        switch (config.getDatabase()) {
            case "mysql":
                return new FactoryMysql(config);
            default:
                return null;
        }
    }

    ProductDAO getProductDAO();

    UserDAO getUserDAO();
}
