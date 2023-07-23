package com.dailyvemaybay.dao;

import com.dailyvemaybay.connection.JdbcConnection;
import com.dailyvemaybay.dto.CustomerDto;
import com.dailyvemaybay.entity.Customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerDao {
    private List<CustomerDto> customerList = null;
    public List<CustomerDto> getAll() throws SQLException {
        customerList = new ArrayList<>();
        try {
            Connection connection = JdbcConnection.getConnection();
            String query = "SELECT * FROM customer;";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                CustomerDto customerDto = new CustomerDto();
                customerDto.setId(resultSet.getInt("id"));
                customerDto.setAccount(resultSet.getString("account"));
                customerDto.setPassword(resultSet.getString("password"));
                customerList.add(customerDto);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } return customerList;
    }

    public CustomerDto get(int id) {
        try {
            Connection connection = JdbcConnection.getConnection();
            String query = "SELECT * FROM customer WHERE id = ?;";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            while(resultSet.next()) {
                CustomerDto customerDto = new CustomerDto();
                customerDto.setId(resultSet.getInt("id"));
                customerDto.setAccount(resultSet.getString("account"));
                customerDto.setPassword(resultSet.getString("password"));
                return customerDto;
            }
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new CustomerDto();
    }

    public CustomerDto get(String account) {
        try {
            Connection connection = JdbcConnection.getConnection();
            String query = "SELECT * FROM customer WHERE account = ?;";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, account);
            ResultSet resultSet = preparedStatement.executeQuery();

            while(resultSet.next()) {
                CustomerDto customerDto = new CustomerDto();
                customerDto.setId(resultSet.getInt("id"));
                customerDto.setAccount(resultSet.getString("account"));
                customerDto.setPassword(resultSet.getString("password"));
                return customerDto;
            }
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new CustomerDto();
    }
    public void insert(CustomerDto customerDto) {
        try {
            Connection connection = JdbcConnection.getConnection();
            String query = "INSERT INTO customer(account, password) VALUES(?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, customerDto.getAccount());
            preparedStatement.setString(2, customerDto.getPassword());

            if(preparedStatement.executeUpdate() > 0) {
                System.out.println("Added customer acccount successfully.");
            } else {
                System.out.println("Failed to insert acccount.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void update(CustomerDto customerDto) {
        try {
            Connection connection = JdbcConnection.getConnection();
            String query = "UPDATE customer SET password = ? WHERE account = ?;";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, customerDto.getPassword());
            preparedStatement.setString(2, customerDto.getAccount());

            if(preparedStatement.executeUpdate() > 0) {
                System.out.println("Edited password successfully.");
            } else {
                System.out.println("Failed to edit password.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
