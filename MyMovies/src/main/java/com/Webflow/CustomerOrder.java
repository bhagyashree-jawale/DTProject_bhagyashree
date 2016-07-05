package com.Webflow;

import javax.persistence.*;
import java.io.Serializable;

@Entity
public class CustomerOrder implements Serializable{


    private static final long serialVersionUID = -1546649310334411202L;

    @Id
    @GeneratedValue
    private int customerOrderId;

    @OneToOne
    @JoinColumn(name = "customerId")
    private Customer customer;



    public int getCustomerOrderId() {
        return customerOrderId;
    }

    public void setCustomerOrderId(int customerOrderId) {
        this.customerOrderId = customerOrderId;
    }

   

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

   

} // The End of Class;
