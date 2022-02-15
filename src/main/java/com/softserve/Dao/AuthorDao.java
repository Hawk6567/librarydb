package com.softserve.Dao;

import com.softserve.entity.Author;
import com.softserve.entity.Book;

import java.util.List;

public interface AuthorDao {
    List<Author> getAll();

    Author save(Author t);

    Author delete(long id);


    Author getByID(long id);
}
