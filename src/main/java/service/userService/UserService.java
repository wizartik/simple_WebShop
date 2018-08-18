package service.userService;

import dao.DataAbstractFactory;
import dao.UserDAO;
import entity.User;

public class UserService {

    public String registerUser(User user){
        UserDAO userDAO = DataAbstractFactory.getFactory().getUserDAO();
        return userDAO.registerUser(user);
    }

    public User login(String email, String password){
        return DataAbstractFactory.getFactory().getUserDAO().login(email, password);
    }

    public User createUser(String login, String email, String name,
                                  String password){
        User user = new User();
        user.setLogin(login);
        user.setEmail(email);
        user.setName(name);
        user.setPassword(password);
        return user;
    }
}
