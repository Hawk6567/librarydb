package com.softserve.Dao.Implementation;

import com.softserve.Dao.AuthorDao;
import com.softserve.Dao.BookDao;
import com.softserve.entity.Author;
import com.softserve.entity.Book;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.Query;
import java.util.List;
@Transactional
@Repository
public class AuthorDaoImpl implements AuthorDao {
    @Autowired
    SessionFactory sessionFactory;
    @Override
    public List<Author> getAll() {
        return  sessionFactory.getCurrentSession().createQuery("from Author").getResultList();
    }

    @Override
    public Author save(Author t) {
        sessionFactory.getCurrentSession().update(t);
        return t;
    }

    @Override
    public Author delete(long id) {
        Author author = getByID(id);
        Query query = sessionFactory.getCurrentSession().createSQLQuery("call deleteAuthor(:id)");
        query.setParameter("id",id);
        query.executeUpdate();
        return author;

    }



    @Override
    public Author getByID(long id) {
        return sessionFactory.getCurrentSession().find(Author.class, id);
    }

}
