package com.softserve.services.Implementation;

import com.softserve.Dao.BookDao;
import com.softserve.entity.Book;
import com.softserve.services.BookService;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
@Service
public class BookServiceImpl implements BookService {
    private final BookDao bookDao;

    public BookServiceImpl(BookDao bookDao) {
        this.bookDao = bookDao;
    }

    @Override
    public Book create(Book book) {
        return bookDao.save(book);
    }

    @Override
    public Book deleteCopy(Long id) {
        return bookDao.deleteCopy(id);
    }

    @Override
    public Book findByID(Long id) {
        return bookDao.getByID(id);
    }

    @Override
    public Book delete(Long id) {
    return bookDao.delete(id);
    }

    @Override
    public List<Book> findAll() {
        return bookDao.getAll();
    }

    @Override
    public List<Book> findBookByUser(String action) {
        return bookDao.getOwnBooks(action);
    }

    @Override
    public List<Book> findBookByName(String name) {
        return bookDao.FindBookByName(name);
    }

    @Override
    public List<Book> findBookByAuthor(String name) {
        return bookDao.FindBookByAuthor(name);
    }

    @Override
    public List<Book> findPopular(LocalDate start, LocalDate end) {
        return bookDao.FindMostPopular(start, end);
    }

    @Override
    public List<Book> findUnpopular(LocalDate start, LocalDate end) {
        return bookDao.FindLeastPopular(start, end);
    }

    @Override
    public List<Book> findAvailable() {
        return bookDao.FindAvailable();
    }

    @Override
    public List<Integer> findTime() {
        return bookDao.FindTime();
    }

    @Override
    public List<String> getAuthors() {
        return bookDao.getAuthors();
    }

    @Override
    public List<Double> getDuration() {
        return bookDao.getDuration();
    }

    @Override
    public List<Integer> getCount() {
        return bookDao.getCount();
    }


}
