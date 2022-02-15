package com.softserve.services;

import com.softserve.entity.Book;
import com.softserve.entity.User;

import java.util.List;

public interface UserService {
    List<User> getReaders();
    List<String> getStat();
    List<User> getDebtors();
    List<Book> getStatByReader(String action , long id);
    Integer timeWithLibrary(long id);


}
