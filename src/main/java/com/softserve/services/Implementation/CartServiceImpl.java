package com.softserve.services.Implementation;

import com.softserve.Dao.CartDao;
import com.softserve.entity.Cart;
import com.softserve.services.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CartServiceImpl implements CartService {
    @Autowired
    CartDao cartDao;
    @Override
    public Cart create(Cart book) {
        return cartDao.save(book);
    }

    @Override
    public Cart findByID(Long id) {
        return cartDao.getByID(id);
    }

    @Override
    public Cart delete(Long id) {
        return cartDao.delete(id);
    }

    @Override
    public void request(Long id) {
         cartDao.request(id);
    }

    @Override
    public void returnBook(long id) {
        cartDao.returnBook(id);
    }

    @Override
    public List<Cart> getAll() {
        return cartDao.getAll();
    }

    @Override
    public List<Cart> findAllByID() {
        return cartDao.getAllByUser();
    }
}
