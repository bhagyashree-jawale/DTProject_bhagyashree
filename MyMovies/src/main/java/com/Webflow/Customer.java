package com.Webflow;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Customer implements Serializable{


    private static final long serialVersionUID = 5140900014886997914L;

    @Id
    @GeneratedValue
    private int cutomerId;

    @NotEmpty (message = "The customer name must not be null")
    private String customerName;

    @NotEmpty (message = "The customer email must not be null")
    private String customerEmail;
    private String customerPhone;

   
    public int getCutomerId() {
        return cutomerId;
    }

    public void setCutomerId(int cutomerId) {
        this.cutomerId = cutomerId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCustomerEmail() {
        return customerEmail;
    }

    public void setCustomerEmail(String customerEmail) {
        this.customerEmail = customerEmail;
    }

    public String getCustomerPhone() {
        return customerPhone;
    }

    public void setCustomerPhone(String customerPhone) {
        this.customerPhone = customerPhone;
    } 
} // The End of Class;
