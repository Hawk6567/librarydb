package com.softserve.services.Implementation;

import com.softserve.Dao.ReaderDao;
import com.softserve.entity.Book;
import com.softserve.entity.User;
import com.softserve.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    ReaderDao readerDao;
    @Override
    public List<User> getReaders() {
        return readerDao.getReaders();
    }

    @Override
    public List<String> getStat() {
        return readerDao.getStat();
    }

    @Override
    public List<User> getDebtors() {
        return readerDao.getDebtors();
    }

    @Override
    public List<Book> getStatByReader(String action, long id) {
        return readerDao.getStatByReader(action, id);
    }

    @Override
    public Integer timeWithLibrary(long id) {
        return readerDao.timeWithLibrary(id);
    }
}
