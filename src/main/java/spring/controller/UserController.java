package spring.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import spring.model.User;
import spring.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@GetMapping("/login")
	public String reachLoginPage() {
		return "login";
	}

	@PostMapping("/add")
	public String saveUser(@RequestParam("pseudo") String pseudo, @RequestParam("password") String password) {
		User user = new User();
		user.setPseudo(pseudo);
		user.setPassword(password);
		userService.save(user);

		return "redirect:/users";

	}
	
	@PostMapping("/login")
	public String loginUser(@RequestParam("pseudo") String pseudo, @RequestParam("password") String password) {
		//verifier les trucs pour connecter
		// si c'est bon 
		// regarder comment passer un paramètre a une page 
		// et passer un paramètre "connectee"
		
		return "redirect:/home";
		
		// sinon, rediriger sur la page de connexion et 
		// lever un drapeau erreur
		
		//return "redirect:/login";
		

	}

	@GetMapping("/users")
	public String getAllUsers(Model model) {
		model.addAttribute("usersModel", userService.list());
		return "users";
	}

	@GetMapping("/users/{id}/delete")
	public String delete(@PathVariable long id) {
		userService.delete(id);
		return "users";
	}

	@PostMapping("/addUser")
	public String saveUser(@ModelAttribute("user") @Valid User user, BindingResult result, Model model) {

		if (result.hasErrors()) {
			model.addAttribute("users", userService.list());
			return "editUsers";
		}

		userService.save(user);
		return "redirect:/createUser";
	}
}