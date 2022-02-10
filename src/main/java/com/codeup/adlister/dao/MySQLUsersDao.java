package com.codeup.adlister.dao;

import com.codeup.adlister.dao.Config;
import com.codeup.adlister.dao.Users;
import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;


import java.sql.*;


public class MySQLUsersDao implements Users {
    private Connection connection = null;

    public MySQLUsersDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public User findByUsername(String username) {
        PreparedStatement stmt = null;
        String sql = "SELECT * FROM users WHERE username = ?";
        try {
            stmt = connection.prepareStatement(sql);
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();
            rs.next();
            return getUser(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }


    private User getUser(ResultSet rs) throws SQLException {
        return new User(
                rs.getLong("id"),
                rs.getString("username"),
                rs.getString("email"),
                rs.getString("password")
        );
    }

    @Override
    public Long insert(User user) {
        try {
            String sql = "INSERT INTO users(username, email, password) VALUE (?,?,?)";
            PreparedStatement stmt = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1,user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating new user.");
        }
    }
}
