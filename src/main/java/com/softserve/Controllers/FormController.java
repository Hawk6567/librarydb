package com.softserve.Controllers;

import com.softserve.entity.Cart;
import com.softserve.entity.Form;
import com.softserve.entity.Form;
import com.softserve.services.CartService;
import com.softserve.services.FormService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

@Controller
public class FormController {
    private static final Logger LOG = LoggerFactory.getLogger(FormController.class);

    @Autowired
    FormService formService;
    @Autowired
    CartService cartService;
    @GetMapping("/forms/my")
    public String listForms(Model theModel) {
        LOG.debug("Show Forms handler method");
        List<Form> theForms = formService.findAllByID();
        theModel.addAttribute("forms", theForms);
        return "list-forms";
    }
    @GetMapping("/forms")
    public String allForms(Model theModel) {
        LOG.debug("Show Forms handler method");
        List<Form> theForms = formService.getAll();
        theModel.addAttribute("forms", theForms);
        return "all-forms";
    }
//    @GetMapping("/forms/showForm")
//    public String showFormForAdd(Model theModel) {
//        LOG.debug("Inside show form-form handler method");
//        Form theForm = new Form();
//        theModel.addAttribute("form", theForm);
//        return "form-form";
//    }

    @GetMapping("/forms/addForm/{cartID}")
    public String saveForm (@PathVariable long cartID) {
        LOG.debug("Save Form handler method");
        Cart cart = cartService.findByID(cartID);
        formService.create(cart.getCartBook().getBookName(),cart.getCartUser().getId(),cartID);
        return "redirect:/forms";
    }
    @GetMapping("/forms/CloseRequest/{cartID}")
    public String EditForm (@PathVariable long cartID) {
        LOG.debug("Save Form handler method");
        Cart cart = cartService.findByID(cartID);
        formService.returnBook(cart.getCartBook().getId(),cart.getCartUser().getId());
        return "redirect:/forms";
    }



    @GetMapping("/forms/delete/{id}")
    public String deleteForms(@PathVariable long id)  {
        LOG.debug("Delete Form handler method");
        formService.delete(id);
        return "redirect:/forms";
    }

//    @GetMapping("/forms/createForm")
//    public String showForm(@RequestParam("cartID") long theId,
//                           Model theModel) {
//        LOG.debug("Update Form handler method");
//        Form theForm = new Form();
//        Cart cart = cartService.findByID(theId);
//        theForm.setFormUser(cart.getCartUser());
//        theForm.setFormBook(cart.getCartBook());
//        theForm.setBookReturned(Date.valueOf(LocalDate.now()));
////        java.sql.Date date1= (java.sql.Date) date;
//
//        theModel.addAttribute("form", theForm);
//        return "form-form";
//    }
    @GetMapping("/forms/updateForm")
    public String showFormForUpdate(@RequestParam("formID") long theId,
                                    Model theModel) {
        LOG.debug("Update Form handler method");
        Form theForm = formService.findByID(theId);
        theModel.addAttribute("form", theForm);
        return "form-form";
    }
    @PostMapping("/forms/saveForm")
    public String EditForm (@ModelAttribute("form") Form theForm) {
        LOG.debug("Save Form handler method");
//       Form form = cartService.findByID(cartID);
        formService.update(theForm);
        return "redirect:/forms";
    }
}
