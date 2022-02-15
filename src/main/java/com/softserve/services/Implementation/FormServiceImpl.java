package com.softserve.services.Implementation;

import com.softserve.Dao.FormDao;
import com.softserve.entity.Form;
import com.softserve.services.FormService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class FormServiceImpl implements FormService {
    @Autowired
    FormDao formDao;
    @Override
    public void create(String book , long userId,long cartID) {
        formDao.confirmRequest(book,userId,cartID);
    }

    @Override
    public Form update(Form form) {
        return formDao.save(form);
    }

    @Override
    public Form findByID(Long id) {
        return formDao.getByID(id);
    }

    @Override
    public void returnBook(long book, long userId) {
        formDao.confirmReturn(book, userId);
    }

    @Override
    public Form delete(Long id) {
        return formDao.delete(id);
    }



    @Override
    public List<Form> getAll() {
        return formDao.getAll();
    }

    @Override
    public List<Form> findAllByID() {
        return formDao.getAllByUser();
    }
}
