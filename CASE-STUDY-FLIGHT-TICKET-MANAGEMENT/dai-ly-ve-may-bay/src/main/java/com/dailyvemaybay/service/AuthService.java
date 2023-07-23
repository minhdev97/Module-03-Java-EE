package com.dailyvemaybay.service;

import com.dailyvemaybay.dao.CustomerDao;
import com.dailyvemaybay.dto.CustomerDto;

import java.util.Objects;

public class AuthService {
    private CustomerDao customerDao = null;
    public AuthService() {
        customerDao = new CustomerDao();
    }

    public CustomerDto login(String account, String password) {
        CustomerDto customerDto = customerDao.get(account);
        if (Objects.equals(customerDto.getPassword(), password) && Objects.equals(customerDto.getAccount(), account)) {
            return customerDto;
        }
        return null;
    }
}
