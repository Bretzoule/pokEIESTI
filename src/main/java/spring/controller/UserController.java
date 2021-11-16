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

	@GetMapping("/createUser")
	public String createUser() {
		return "home";
	}

	@PostMapping("/add")
	public String saveUser(@RequestParam("pseudo") String pseudo, @RequestParam("password") String password) {
		User user = new User();
		user.setPseudo(pseudo);
		user.setPassword(password);
		userService.save(user);

		return "redirect:/users";

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