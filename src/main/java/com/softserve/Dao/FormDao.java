package com.softserve.Dao;

import com.softserve.entity.Form;

import java.util.List;

public interface FormDao {
    List<Form> getAllByUser();

    List<Form> getAll();

    Form save(Form t);

    Form delete(long id);

    Form getByID(long id);

    void confirmRequest(String book , long userID, long cartID);
    void confirmReturn(long book , long userID);
}
