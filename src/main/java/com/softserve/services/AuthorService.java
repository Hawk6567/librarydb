package com.softserve.services;

import com.softserve.entity.Author;

import java.util.List;

public interface AuthorService {
    Author update(Author author);

    Author read(Long id);

    void delete(Long id);

    List<Author> findAll();
}
