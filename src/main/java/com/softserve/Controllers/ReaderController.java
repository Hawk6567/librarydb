package com.softserve.Controllers;

import com.softserve.entity.Book;
import com.softserve.entity.User;
import com.softserve.services.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
public class ReaderController {

    private static final Logger LOG = LoggerFactory.getLogger(ReaderController.class);

    @Autowired
    private UserService userService;

    @GetMapping("/readers")
    public String listReaders(Model theModel) {
        LOG.debug("Show Books handler method");
        List<User> theReaders = userService.getReaders();
        theModel.addAttribute("readers", theReaders);
        return "list-reader";
    }
    @GetMapping("/readers/debtors")
    public String listDebtors(Model theModel) {
        LOG.debug("Show Books handler method");
        List<User> theReaders = userService.getDebtors();
        theModel.addAttribute("readers", theReaders);
        return "list-debtors";
    }
    @GetMapping("/readers/{id}")
    public String list(@PathVariable long id,Model theModel) {
        LOG.debug("Show Books handler method");
        List<Book> theBooks = userService.getStatByReader("reading",id);
        List<Book> theBooks1 = userService.getStatByReader("read",id);
        Integer time  = userService.timeWithLibrary(id);
        theModel.addAttribute("time", time);
        theModel.addAttribute("reading", theBooks);
        theModel.addAttribute("books", theBooks1);
        return "reader-book";

    }

    @GetMapping("/readers/stat")
    public String stat(Model theModel) {
        LOG.debug("Show Books handler method");
        List<String> theReaders = userService.getStat();
        theModel.addAttribute("readers", theReaders);
        return "library-info";
    }
//    @GetMapping("/showForm")
//    public String showFormForAdd(Model theModel) {
//        LOG.debug("Inside show book-form handler method");
//        Reader theReader = new Reader();
//        theModel.addAttribute("reader", theReader);
//        return "reader-form";
//    }

//    @PostMapping("/saveReader")
//    public String saveReader(@ModelAttribute("reader") Reader theReader) {
//        LOG.debug("Save Book handler method");
//        userService.update(theReader);
//        return "redirect:/reader/list";
//    }
//
//    @GetMapping("/updateForm")
//    public String showFormForUpdate(@RequestParam("readerID") long theId,
//                                    Model theModel) {
//        LOG.debug("Update Book handler method");
//        Reader theReader = userService.read(theId);
//        theModel.addAttribute("reader", theReader);
//        return "reader-form";
//    }
//    @GetMapping("/delete/{id}")
//    public String deleteReader(@PathVariable long id)  {
//        LOG.debug("Delete Book handler method");
//        userService.delete(id);
//        return "redirect:/reader/list";
//    }
}