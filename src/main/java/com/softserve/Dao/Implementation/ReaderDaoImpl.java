package com.softserve.Dao.Implementation;

import com.softserve.Dao.ReaderDao;
import com.softserve.entity.Book;
import com.softserve.entity.User;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;

@Repository
@Transactional
public class ReaderDaoImpl implements ReaderDao {
    @Autowired
    SessionFactory sessionFactory;
    @Override
    public List<User> getReaders() {
        return sessionFactory.getCurrentSession().createSQLQuery("call GetReaders()").addEntity(User.class).getResultList();
    }

    @Override
    public List<String> getStat() {
        String avgAge = String.valueOf(sessionFactory.getCurrentSession().createSQLQuery("call GetStatAboutReaderAvrAge()").getFirstResult());
        String avgTime = String.valueOf(sessionFactory.getCurrentSession().createSQLQuery("call GetStatAboutAvrReg()").getFirstResult());
        String avgRequest = String.valueOf(sessionFactory.getCurrentSession().createSQLQuery("call getAvgRequest()").getFirstResult());
   List<String> strings = new ArrayList<>();
        strings.add("Average age: "+ avgAge);
        strings.add("Average time with library :"+avgTime);
        strings.add("Average requests per month :" +avgRequest);
        return strings;
    }

    @Override
    public List<User> getDebtors() {
        return sessionFactory.getCurrentSession().createSQLQuery("call ListOfDebtors").addEntity(User.class).getResultList();

    }

    @Override
    public List<Book> getStatByReader(String action , long id) {


        List<Book> bookList = new ArrayList<>();
        Query query1 = sessionFactory.getCurrentSession().createSQLQuery("call getOwnBooks(:id,:action)").addEntity(Book.class);
        query1.setParameter("id", id);
        query1.setParameter("action", action);
        bookList = query1.getResultList();
        return bookList;
    }

    @Override
    public Integer timeWithLibrary(long id) {
        Query query =  sessionFactory.getCurrentSession().createSQLQuery("call ReaderTimeWithLibrary(:id)");
        query.setParameter("id",  id);
        return query.getFirstResult();
    }
}
