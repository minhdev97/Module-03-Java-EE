package com.dailyvemaybay.entity;

public class CustomersInfos {
    int id;
    String gender;
    String name;
    String email;
    String address;
    String dayOfBirth;
    String phoneNumber;

    public CustomersInfos(int id, String gender, String name, String email, String address, String dayOfBirth, String phoneNumber) {
        this.id = id;
        this.gender = gender;
        this.name = name;
        this.email = email;
        this.address = address;
        this.dayOfBirth = dayOfBirth;
        this.phoneNumber = phoneNumber;
    }

    public CustomersInfos() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDayOfBirth() {
        return dayOfBirth;
    }

    public void setDayOfBirth(String dayOfBirth) {
        this.dayOfBirth = dayOfBirth;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
}
