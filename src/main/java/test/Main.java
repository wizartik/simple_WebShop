package test;

import dao.DataAbstractFactory;
import dao.ProductDAO;
import dao.UserDAO;

public class Main {
    public static void main(String[] args) {
        UserDAO userDAO = DataAbstractFactory.getFactory().getUserDAO();
//        System.out.println(userDAO.login("123","123"));

        ProductDAO productDAO = DataAbstractFactory.getFactory().getProductDAO();

        System.out.println(productDAO.getProduct("VivoBook Pro 17 N705UD (N705UD-GC096T) Grey M"));
//        User user = new User();
//        user.setLogin("1234");
//        user.setEmail("1234@1234.1234");
//        user.setPassword("1234");
//        user.setName("test name 1");
//
//        System.out.println(user.toString());
//        System.out.println(userDAO.registerUser(user));
//        System.out.println(user);
    }

}
