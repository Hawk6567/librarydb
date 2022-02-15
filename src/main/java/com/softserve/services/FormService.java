package com.softserve.services;


import com.softserve.entity.Form;
import com.softserve.entity.Form;


import java.time.LocalDateTime;
import java.util.List;

public interface FormService {

    void create(String book,long userId, long cartID);
Form update(Form form);
Form findByID(Long id);
void returnBook(long book,long userId);
    Form delete(Long id);
    List<Form> getAll();
    List<Form> findAllByID();

}
