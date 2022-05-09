package com.zaurtregulov.spring.mvc;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MyController {

    @RequestMapping("/a")
    public String showFirstView(){
        return "first-view";
    }



    @RequestMapping("/askDetails")
    public String askEmployeeDetails(Model model){
        model.addAttribute("employee", new Employee());
        return "ask-emp-details-view";
    }
//    @RequestMapping("showDetails")
//    public String showEmpDetails(){
//        return "show-emp-details-view";
//    }
@GetMapping("showDetails")
public String showEmpDetails(@Valid @ModelAttribute("employee")  Employee emp, BindingResult bindingResult){
        if (bindingResult.hasErrors()){
            return "ask-emp-details-view";
        } else {

    return "show-emp-details-view";
        }
}
}
