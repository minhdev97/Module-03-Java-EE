package com.dailyvemaybay.dao;

import com.dailyvemaybay.connection.JdbcConnection;
import com.dailyvemaybay.entity.CustomersInfos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomersInfosDao {
    private List<CustomersInfos> customersInfosList = null;

    public List<CustomersInfos> getAll() {
        customersInfosList = new ArrayList<>();
        try {
            Connection connection = JdbcConnection.getConnection();
            String query = "SELECT * FROM CustomerInfos;";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                CustomersInfos customersInfos = new CustomersInfos();
                customersInfos.setId(resultSet.getInt("id"));
                customersInfos.setGender(resultSet.getString("gender"));
                customersInfos.setName(resultSet.getString("name"));
                customersInfos.setEmail(resultSet.getString("email"));
                customersInfos.setAddress(resultSet.getString("address"));
                customersInfos.setDayOfBirth(resultSet.getString("dayofbirth"));
                customersInfos.setPhoneNumber(resultSet.getString("phonenumber"));
                customersInfosList.add(customersInfos);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return customersInfosList;
    }

    public CustomersInfos get(int id) {
        try {
            Connection connection = JdbcConnection.getConnection();
            String query = "SELECT * FROM CustomerInfos WHERE id = ?;";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                CustomersInfos customersInfos = new CustomersInfos();
                customersInfos.setId(resultSet.getInt("id"));
                customersInfos.setGender(resultSet.getString("gender"));
                customersInfos.setName(resultSet.getString("name"));
                customersInfos.setEmail(resultSet.getString("email"));
                customersInfos.setAddress(resultSet.getString("address"));
                customersInfos.setDayOfBirth(resultSet.getString("dayofbirth"));
                customersInfos.setPhoneNumber(resultSet.getString("phonenumber"));
                return customersInfos;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return new CustomersInfos();
    }

    public void insert(CustomersInfos customersInfos) {
        try {
            Connection connection = JdbcConnection.getConnection();
            String query = "INSERT INTO CustomerInfos(GENDER, NAME, EMAIL, ADDRESS, DAYOFBIRTH, PHONENUMBER) VALUES(?, ?, ?, ?, ?, ?);";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, customersInfos.getGender());
            preparedStatement.setString(2, customersInfos.getName());
            preparedStatement.setString(3, customersInfos.getEmail());
            preparedStatement.setString(4, customersInfos.getAddress());
            preparedStatement.setString(5, customersInfos.getDayOfBirth());
            preparedStatement.setString(6, customersInfos.getPhoneNumber());
            preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void update(CustomersInfos customersInfos) {
        try {
            Connection connection = JdbcConnection.getConnection();
            String query = "UPDATE CustomerInfos SET GENDER = ?, NAME = ?, EMAIL = ?, ADDRESS = ?, DAYOFBIRTH = ?, PHONENUMBER = ? WHERE ID = ?;";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, customersInfos.getGender());
            preparedStatement.setString(2, customersInfos.getName());
            preparedStatement.setString(3, customersInfos.getEmail());
            preparedStatement.setString(4, customersInfos.getAddress());
            preparedStatement.setString(5, customersInfos.getDayOfBirth());
            preparedStatement.setString(6, customersInfos.getPhoneNumber());
            preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public void delete(Integer id) {
        try {
            Connection connection = JdbcConnection.getConnection();
            String query = "DELETE FROM users WHERE id = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
