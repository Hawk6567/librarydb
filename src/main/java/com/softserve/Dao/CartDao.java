package com.softserve.Dao;

import com.softserve.entity.Cart;

import java.util.List;

public interface CartDao {
    List<Cart> getAllByUser();

    List<Cart> getAll();

    Cart save(Cart t);

    Cart delete(long id);

    Cart getByID(long id);

    void returnBook(long id);

    void request(long id);
}
