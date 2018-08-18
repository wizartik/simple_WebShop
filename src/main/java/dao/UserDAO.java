package dao;

import entity.User;

public interface UserDAO {

    User getUser(long id);
    User getUser(String login);

    User login(String login, String password);

    boolean isLoginExists(String login);
    boolean isEmailExists(String email);

    String registerUser(User user);
    User updateUser(long id, User updatedUser);


}
