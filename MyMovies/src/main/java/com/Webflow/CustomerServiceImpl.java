package com.Webflow;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerServiceImpl implements CustomerService{

    @Autowired
    private CustomerDao customerDao;
@Transactional
    public void addCustomer(Customer customer){
        customerDao.addCustomer(customer);
    }
@Transactional
    public Customer getCustomerById(int customerId){
        return customerDao.getCustomerById(customerId);
    }
@Transactional
    public List<Customer> getAllCustomers(){
        return customerDao.getAllCustomers();
    }
@Transactional
    public Customer getCustomerByUsername (String username){
        return customerDao.getCustomerByUsername(username);
    }


} // The End of Class;
