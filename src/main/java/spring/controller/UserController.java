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
import org.springframework.security.crypto.bcrypt.BCrypt;

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

	public boolean existUser(String email) {
		return(userService.getUser(email)!=null);
	}
	
	@PostMapping("/add")
	public String saveUser(@RequestParam("email") String email, @RequestParam("password") String password) {
		if(existUser(email)) {
			System.out.println("utilisateur existant");
			//ajouter message
		} else {
			User user = new User();
			String passwordHash;
			passwordHash = BCrypt.hashpw(password,BCrypt.gensalt()) ;
			user.setEmail(email);
			user.setPassword(passwordHash);
			userService.save(user);
		}
		return "redirect:/login";
	}
	
	@PostMapping("/login")
	public String loginUser(@RequestParam("email") String email, @RequestParam("password") String password) {
		User user = new User();
		user = userService.getUser(email);
		String pw_hash = user.getPassword();
		// regarder comment passer un paramètre a une page 
		// et passer un paramètre connectee
		if( BCrypt.checkpw(password, pw_hash) ) {
		    System.out.println("mot de passe OK");
		    return "redirect:/";
		}else {
		    System.out.println("Mauvais mdp");
		    return "redirect:/login";
		}
		
		
		// sinon, rediriger sur la page de connexion et 
		// lever un drapeau erreur
		
		
	}
	
//	@GetMapping("/users/{email}/details")
//	public String getUser(@PathVariable String email, Model model) {
//		model.addAttribute("user",userService.getUser(email));
//		return "users2";
//	}

	@GetMapping("/users")
	public String getAllUsers(Model model) {
		model.addAttribute("usersModel", userService.list());
		return "users";
	}

	@GetMapping("/users/{id}/delete")
	public String delete(@PathVariable String email) {
		userService.delete(email);
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