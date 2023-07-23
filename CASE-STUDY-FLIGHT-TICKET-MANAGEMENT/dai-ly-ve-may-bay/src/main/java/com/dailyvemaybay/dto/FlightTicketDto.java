package com.dailyvemaybay.dto;

import java.util.Date;

public class FlightTicketDto {
    int id;
    int customerID;
    String position;
    String plane;
    String time;
    String seat;
    String depart;
    String dest;
    int price;
    String date;

    public FlightTicketDto() {
    }


    public FlightTicketDto(int id, int customerID, String position, String plane, String time, String seat, String depart, String dest, String flightHour, int price, String date) {
        this.id = id;
        this.customerID = customerID;
        this.position = position;
        this.plane = plane;
        this.time = time;
        this.seat = seat;
        this.depart = depart;
        this.dest = dest;
        this.price = price;
        this.date = date;
    }

    public FlightTicketDto(String position, String plane, String time, String seat, String depart, String dest, int price, String date) {
        this.position = position;
        this.plane = plane;
        this.seat = seat;
        this.depart = depart;
        this.dest = dest;
        this.time = time;
        this.price = price;
        this.date = date;
    }



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCustomerID() {
        return customerID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getPlane() {
        return plane;
    }

    public void setPlane(String plane) {
        this.plane = plane;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getSeat() {
        return seat;
    }

    public void setSeat(String seat) {
        this.seat = seat;
    }

    public String getDepart() {
        return depart;
    }

    public void setDepart(String depart) {
        this.depart = depart;
    }

    public String getDest() {
        return dest;
    }

    public void setDest(String dest) {
        this.dest = dest;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
}
