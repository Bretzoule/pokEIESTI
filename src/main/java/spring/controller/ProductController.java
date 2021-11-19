package spring.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import spring.model.Product;
import spring.model.Type;
import spring.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;

	@GetMapping("/products")
	public String indexCategory(@RequestParam(name = "category", required = false) Integer categoryType, Model model) {
		if ((categoryType != null) && (categoryType.intValue() < 4) && categoryType.intValue() >= 0) {
			model.addAttribute("productList", productService.listByType(Type.values()[categoryType.intValue()]));
		} else {
			model.addAttribute("productList", productService.list());
		}
		return ("products");
	}

	@GetMapping("/product")
	public String getSingleProduct(@RequestParam() int id, Model model) {
		model.addAttribute("product", productService.getProduct(id));
		return ("product");
	}

	@GetMapping("/addProduct")
	public String reachAddProduct(Model model) {
		model.addAttribute("type", Type.values());
		model.addAttribute("product", new Product());
		return "addProduct";
	}

	@PostMapping("/addProduct/add")
	public String addProduct(@ModelAttribute("product") @Valid Product theProduct) {
		System.out.println("Le produit : " + theProduct.getDescription() + " " + theProduct.getType() + theProduct.getName() + theProduct.getPrice());
		return ("redirect:/addProduct");
	}
}