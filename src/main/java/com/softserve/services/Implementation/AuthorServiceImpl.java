package com.softserve.services.Implementation;

import com.softserve.Dao.AuthorDao;
import com.softserve.entity.Author;
import com.softserve.services.AuthorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AuthorServiceImpl implements AuthorService {

    @Autowired
    AuthorDao authorDao;

    @Override
    public Author read(Long id) {
        return authorDao.getByID(id);
    }

    @Override
    public void delete(Long id) {
        authorDao.delete(id);
    }

    @Override
    public Author update(Author author) {
        return authorDao.save(author);
    }

    @Override
    public List<Author> findAll() {
        return  authorDao.getAll();
    }
}
