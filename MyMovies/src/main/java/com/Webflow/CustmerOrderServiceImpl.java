package com.Webflow;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustmerOrderServiceImpl implements CustomerOrderService{

    @Autowired
    private CustomerOrderDao customerOrderDao;

    @Autowired
   

    public void addCustomerOrder(CustomerOrder customerOrder){
        customerOrderDao.addCustomerOrder(customerOrder);
    }

    public double getCustomerOrderGrandTotal(int cartId){
//        double grandTotal = 0;
//        Cart cart = cartService.getCartById(cartId);
//        List<CartItem> cartItems = cart.getCartItems();
//
//        for (CartItem item : cartItems){
//            grandTotal += item.getTotalPrice();
//        }
//
        //return grandTotal;
    	return 0;
    }

} // The End of Class;
