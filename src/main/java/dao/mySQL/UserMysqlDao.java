package dao.mySQL;

import dao.UserDAO;
import entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import static dao.util.Util.closeStuff;
import static dao.util.Util.generateMD5;

public class UserMysqlDao implements UserDAO {

    private Connection connection;

    UserMysqlDao(Connection connection) {
        this.connection = connection;
    }

    @Override
    public User getUser(long id) {
        User user = null;
        String query = "SELECT id, login, email, name FROM users WHERE id = ?";

        ResultSet resultSet = null;
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setLong(1, id);
            resultSet = preparedStatement.executeQuery();
            user = createUser(resultSet);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeStuff(resultSet);
        }

        return user;
    }

    @Override
    public User getUser(String login) {
        User user = null;
        String query = "SELECT id, login, email, name FROM users WHERE login " +
                "= ?";

        ResultSet resultSet = null;
        try(PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, login);
            resultSet = preparedStatement.executeQuery();
            user = createUser(resultSet);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeStuff(resultSet);
        }
        return user;
    }

    @Override
    public User login(String login, String password) {
        User user = null;
        password = generateMD5(password);

        String query = "SELECT id, login, email, name FROM users " +
                "WHERE login=? AND password=?";

        ResultSet resultSet = null;
        try (PreparedStatement preparedStatement = connection.prepareStatement(query);) {
            preparedStatement.setString(1, login);
            preparedStatement.setString(2, password);
            resultSet = preparedStatement.executeQuery();
            user = createUser(resultSet);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeStuff(resultSet, connection);
        }

        return user;
    }

    @Override
    public boolean isLoginExists(String login) {
        return isValueExists("login", login);
    }

    @Override
    public boolean isEmailExists(String email) {
        return isValueExists("email", email);
    }

    private boolean isValueExists(String column, String value) {
        boolean result = true;
        String query = "SELECT " + column + " FROM users WHERE " + column + " = ?";

        ResultSet resultSet = null;
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, value);
            resultSet = preparedStatement.executeQuery();
            result = resultSet.next();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeStuff(resultSet);
        }
        return result;
    }

    private String isUserExists(User user) {
        String error = "";
        if (isEmailExists(user.getEmail())) {
            error = error.concat("\nthis email is already registered");
        }
        if (isLoginExists(user.getLogin())) {
            error = error.concat("\nthis login is already registered");
        }
        return error;
    }

    private long insertUser(User user) {
        String query = "INSERT INTO  users(login, email, password, name) " +
                "VALUES (?,?,?,?)";

        ResultSet resultSet = null;

        try (PreparedStatement preparedStatement = connection
                .prepareStatement(query, PreparedStatement.RETURN_GENERATED_KEYS)) {
            preparedStatement.setString(1, user.getLogin());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getPassword());
            preparedStatement.setString(4, user.getName());

            preparedStatement.executeUpdate();
            resultSet = preparedStatement.getGeneratedKeys();

            if (resultSet.next()) {
                return resultSet.getLong(1);
            } else {
                return -1;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeStuff(resultSet, connection);
        }
        return -1;
    }

    @Override
    public String registerUser(User user) {
        String error = isUserExists(user);

        if (!error.isEmpty()) {
            return error;
        }
        user.setPassword(generateMD5(user.getPassword()));

        long id = insertUser(user);

        if (id > 0) {
            user.setId(id);
            user.setPassword(null);
            error = "ok";
        }
        return error;
    }

    @Override
    public User updateUser(long id, User updatedUser) {
        return null;
    }

    @Override
    protected void finalize() throws Throwable {
        closeStuff(connection);
    }

    private static User createUser(ResultSet resultSet) throws SQLException {
        User user = new User();

        if (resultSet.next()) {
            user.setId(resultSet.getLong("id"));
            user.setLogin(resultSet.getString("login"));
            user.setEmail(resultSet.getString("email"));
            user.setName(resultSet.getString("name"));
        } else {
            return null;
        }

        return user;
    }
}
