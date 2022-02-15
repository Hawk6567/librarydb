package com.softserve.Dao.Implementation;

import com.softserve.Dao.CartDao;
import com.softserve.entity.Author;
import com.softserve.entity.Book;
import com.softserve.entity.Cart;
import com.softserve.entity.User;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.annotation.AccessType;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.enterprise.inject.spi.WithAnnotations;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;

@Repository
@Transactional
public class CartDaoImpl implements CartDao {
    @Autowired
    SessionFactory sessionFactory;

    @Override
    public List<Cart> getAllByUser() {
        User user = new User();
        List<Cart> cartList = new ArrayList<>();
        Query query = sessionFactory.getCurrentSession().createSQLQuery("call getID()").addEntity(User.class);
        user = (User) query.getResultList().stream().findFirst().orElse(null);
        if (user != null) {
            Query query1 = sessionFactory.getCurrentSession().createQuery("select c from Cart c where c.CartUser.id=:id", Cart.class);
            query1.setParameter("id", user.getId());
            cartList = query1.getResultList();
        }

        return cartList;
    }

    @Override
    public List<Cart> getAll() {
        return sessionFactory.getCurrentSession().createQuery("from Cart").getResultList();
    }

    @Override
    public void request(long id) {
        User user = new User();

        Query query = sessionFactory.getCurrentSession().createSQLQuery("call getID()").addEntity(User.class);
        user = (User) query.getResultList().stream().findFirst().orElse(null);
        if (user != null) {
            Book book = sessionFactory.getCurrentSession().find(Book.class, id);
            Query query1 = sessionFactory.getCurrentSession().createSQLQuery("call RequestBook(:bookname,:uId)");
            query1.setParameter("uId", user.getId());
            query1.setParameter("bookname", book.getBookName());
            query1.executeUpdate();
        }
    }

    @Override
    public Cart save(Cart t) {
        User user = new User();

        Query query = sessionFactory.getCurrentSession().createSQLQuery("call getID()").addEntity(User.class);
        user = (User) query.getResultList().stream().findFirst().orElse(null);
        t.setCartUser(user);
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        return t;
    }

    @Override
    public Cart delete(long id) {
        Cart cart = getByID(id);
        sessionFactory.getCurrentSession().remove(cart);
        return cart;
    }

    @Override
    public Cart getByID(long id) {
        return sessionFactory.getCurrentSession().find(Cart.class, id);
    }

    @Override
    public void returnBook(long id) {
        User user = new User();

        Query query = sessionFactory.getCurrentSession().createSQLQuery("call getID()").addEntity(User.class);
        user = (User) query.getResultList().stream().findFirst().orElse(null);
        if (user != null) {
            Book book = sessionFactory.getCurrentSession().find(Book.class, id);
            Query query1 = sessionFactory.getCurrentSession().createSQLQuery("call ReturnBookByUser(:bookid,:uId)");
            query1.setParameter("uId", user.getId());
            query1.setParameter("bookid", book.getId());
            query1.executeUpdate();
        }
    }
}
