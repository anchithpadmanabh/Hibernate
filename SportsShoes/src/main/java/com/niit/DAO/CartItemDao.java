package com.niit.DAO;

import java.util.List;

import com.niit.Model.Cart;
import com.niit.Model.CartItem;


public interface CartItemDao {

    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId (String id,int cartId);
    
    List<CartItem> getAllCartItems(int cartId);

}
