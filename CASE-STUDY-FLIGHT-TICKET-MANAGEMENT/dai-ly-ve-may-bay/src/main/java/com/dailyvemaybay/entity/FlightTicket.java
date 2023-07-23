package com.dailyvemaybay.entity;

import java.util.Date;

public class FlightTicket {
int id;
int customerID;
String position;
String plane;
String time;
String seat;
String depart;
String dest;
String flightHour;
int price;
Date date;

    public FlightTicket() {
    }


    public FlightTicket(int id, int customerID, String position, String plane, String time, String seat, String depart, String dest, String flightHour, int price, Date date) {
        this.id = id;
        this.customerID = customerID;
        this.position = position;
        this.plane = plane;
        this.time = time;
        this.seat = seat;
        this.depart = depart;
        this.dest = dest;
        this.flightHour = flightHour;
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

    public FlightTicket(int customerID, String position, String plane, String time, String seat, String depart, String dest, String flightHour, int price, Date date) {
        this.customerID = customerID;
        this.position = position;
        this.plane = plane;
        this.time = time;
        this.seat = seat;
        this.depart = depart;
        this.dest = dest;
        this.flightHour = flightHour;
        this.price = price;
        this.date = date;
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

    public String getFlightHour() {
        return flightHour;
    }

    public void setFlightHour(String flightHour) {
        this.flightHour = flightHour;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
