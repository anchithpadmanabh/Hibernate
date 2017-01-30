package com.niit.DAO;

import com.niit.Model.Cart;
import java.io.IOException;
import java.util.List;

public interface CartDao {

    Cart getCartById (int cartId);
    
    Cart validate(int cartId) throws IOException;  
    
    public void update(Cart cart);
}
