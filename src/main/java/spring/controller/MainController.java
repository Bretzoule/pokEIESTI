package spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


//on fait les chemins pour rediriger vers les bonnes pages
@Controller
public class MainController {
    @GetMapping("/")
    public String index() {
        return ("index");
    }
    
    @GetMapping("register")
    public String register() {
        return ("register");
    }
    
    @GetMapping("403")
    public String error403() {
    	return("403");
    }
    
    @GetMapping("404")
    public String error404() {
    	return("404");
    }
    
}