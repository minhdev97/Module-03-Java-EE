package com.example.javaweb.model;

public class Product {
    int id;
    int price;
    String name;
    int quantity;

    public Product() {
    }

    public Product(int id, String name, int price, int quantity) {
        this.id = id;
        this.price = price;
        this.name = name;
        this.quantity = quantity;
    }

    public int getID() {
        return id;
    }

    public void setID(int id) {
        this.id = id;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
