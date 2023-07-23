package com.dailyvemaybay.dao;

import com.dailyvemaybay.connection.JdbcConnection;
import com.dailyvemaybay.dto.FlightTicketDto;
import com.dailyvemaybay.entity.FlightTicket;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

public class FlightTicketDao {
    private List<FlightTicket> flightTicketList = null;

    public List<FlightTicket> getAll() {
        flightTicketList = new LinkedList<>();

        try {
            Connection connection = JdbcConnection.getConnection();
            String query = "SELECT * FROM flight_ticket;";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                FlightTicket flightTicket = new FlightTicket();
                flightTicket.setPosition(resultSet.getString("position"));
                flightTicket.setPlane(resultSet.getString("plane"));
                flightTicket.setTime(resultSet.getString("time"));
                flightTicket.setSeat(resultSet.getString("seat"));
                flightTicket.setDepart(resultSet.getString("depart"));
                flightTicket.setDest(resultSet.getString("dest"));
                flightTicket.setFlightHour(resultSet.getString("flighthour"));
                flightTicket.setPrice(resultSet.getInt("price"));
                flightTicket.setDate(resultSet.getDate("date"));
                flightTicketList.add(flightTicket);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flightTicketList;
    }

    public FlightTicket get(int id) {
        try {
            Connection connection = JdbcConnection.getConnection();
            String query = "SELECT * FROM flight_ticket WHERE id = ?;";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                FlightTicket flightTicket = new FlightTicket();
                flightTicket.setPosition(resultSet.getString("position"));
                flightTicket.setPlane(resultSet.getString("plane"));
                flightTicket.setTime(resultSet.getString("time"));
                flightTicket.setSeat(resultSet.getString("seat"));
                flightTicket.setDepart(resultSet.getString("depart"));
                flightTicket.setDest(resultSet.getString("dest"));
                flightTicket.setFlightHour(resultSet.getString("flighthour"));
                flightTicket.setPrice(resultSet.getInt("price"));
                flightTicket.setDate(resultSet.getDate("date"));
                return flightTicket;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new FlightTicket();
    }

    public void insert(FlightTicketDto flightTicketDto) {
        try {
            Connection connection = JdbcConnection.getConnection();
            String query = "INSERT INTO flight_ticket (position, plane, TIME, SEAT, DEPART, DEST, PRICE, DATE) VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, flightTicketDto.getPosition());
            preparedStatement.setString(2,flightTicketDto.getPlane());
            preparedStatement.setString(3,flightTicketDto.getTime());
            preparedStatement.setString(4,flightTicketDto.getSeat());
            preparedStatement.setString(5,flightTicketDto.getDepart());
            preparedStatement.setString(6,flightTicketDto.getDest());
            preparedStatement.setInt(7,flightTicketDto.getPrice());
            preparedStatement.setString(8,flightTicketDto.getDate());
            preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void update(FlightTicket flightTicket) {
        try {
            Connection connection = JdbcConnection.getConnection();
            String query = "UPDATE flight_ticket SET position = ?, plane = ?, TIME= ?, SEAT = ?, DEPART = ?, DEST = ?, FLIGHTHOUR = ?, PRICE = ?, DATE = ? ";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, flightTicket.getPosition());
            preparedStatement.setString(2,flightTicket.getPlane());
            preparedStatement.setString(3,flightTicket.getTime());
            preparedStatement.setString(4,flightTicket.getSeat());
            preparedStatement.setString(5,flightTicket.getDepart());
            preparedStatement.setString(6,flightTicket.getDest());
            preparedStatement.setString(7,flightTicket.getFlightHour());
            preparedStatement.setInt(8,flightTicket.getPrice());
            preparedStatement.setDate(9, (Date) flightTicket.getDate());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void delete (int id) {
        try {
            Connection connection = JdbcConnection.getConnection();
            String query = "DELETE FROM flight_ticket WHERE id = ?;";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, id);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
