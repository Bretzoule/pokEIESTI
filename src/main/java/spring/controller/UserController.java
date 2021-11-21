package spring.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.security.crypto.bcrypt.BCrypt;

import spring.model.Role;
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
	public String saveUser(@RequestParam("email") String email, @RequestParam("password") String password, Model model) {
		System.out.println(Role.values());
		if(existUser(email)) {
			System.out.println("utilisateur existant");
			model.addAttribute("erreurUser", Boolean.TRUE);
		} else {
			model.addAttribute("erreurUser", Boolean.FALSE);
			User user = new User();
			String passwordHash;
			passwordHash = BCrypt.hashpw(password,BCrypt.gensalt());
			user.setEmail(email);
			user.setPassword(passwordHash);
			user.setRole(Role.USER);
			userService.save(user);
		}
		return "/login";
	}
	
	@PostMapping("/login")
	public String loginUser(@RequestParam("email") String email, @RequestParam("password") String password, Model model) {
		
		// regarder comment passer un paramètre a une page 
		// et passer un paramètre connectee
		if(existUser(email)) {
			User user = new User();
			user = userService.getUser(email);
			String pw_hash = user.getPassword();
			model.addAttribute("erreurNoUser", Boolean.FALSE);
			if( BCrypt.checkpw(password, pw_hash) ) {
			    System.out.println("mot de passe OK");
			    model.addAttribute("erreurMdp", Boolean.FALSE);
			    return "redirect:/";
			}else {
			    System.out.println("Mauvais mdp");
			    model.addAttribute("erreurMdp", Boolean.TRUE);
			    return "/login";
			}
		} else {
			System.out.println("Utilisateur n'existe pas");
			model.addAttribute("erreurNoUser", Boolean.TRUE);
			return "/login";
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
		model.addAttribute("userList", userService.list());
		return "listUsers";
	}

	@GetMapping("/usersDelete/{email:.+}")
	public String delete(@PathVariable("email") String email) {
		userService.delete(email);
		return "redirect:/users";
	}

	@PostMapping("/addUser")
	public String saveUser(@ModelAttribute("user") @Valid User user, BindingResult result, Model model) {

		if (result.hasErrors()) {
			System.out.println("Erreurs");
			model.addAttribute("users", userService.list());
			return "register";
		}

		userService.save(user);
		return "redirect:/listUsers";
	}
}