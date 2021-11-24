package spring.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import spring.model.Product;
import spring.model.Role;
import spring.model.Type;
import spring.service.ProductService;

@Controller
public class ProductController {

	private static final String UPLOAD_DIRECTORY = "assets/products";

	@Autowired
	private ProductService productService;

	@GetMapping("/products")
	public String indexCategory(@RequestParam(name = "category", required = false) Integer categoryType, Model model) {
		if ((categoryType != null) && (categoryType.intValue() < 4) && categoryType.intValue() >= 0) {
			model.addAttribute("productList", productService.listByType(Type.values()[categoryType.intValue()]));
			model.addAttribute("category", Type.values()[categoryType.intValue()]);
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
	public String reachAddProduct(Model model, HttpServletRequest request) {
		if (request.getSession(false).getAttribute("userRole") == Role.ADMIN) {
			model.addAttribute("type", Type.values());
			model.addAttribute("product", new Product());
			return "addProduct";
		} else {
			return "403error";
		}

	}

	@PostMapping("/addProduct/add")
	public String addProduct(@RequestParam("file") CommonsMultipartFile file,
			@ModelAttribute("product") @Valid Product theProduct, BindingResult result, HttpServletRequest request,
			Model model, RedirectAttributes attr) {
		if (request.getSession(false).getAttribute("userRole") == Role.ADMIN) {
			if (result.hasErrors()) {
				return ("addProduct");
			} else {
				try {
					String path = request.getServletContext().getRealPath("WEB-INF/" + UPLOAD_DIRECTORY);
					String filename = file.getOriginalFilename();
					byte barr[] = file.getBytes();
					BufferedOutputStream bout = new BufferedOutputStream(new FileOutputStream(path + "/" + filename));
					bout.write(barr);
					bout.flush();

					theProduct.setPicture(UPLOAD_DIRECTORY + '/' + filename);
					productService.save(theProduct);
					attr.addFlashAttribute("success", Boolean.TRUE);

				} catch (Exception e) {
					attr.addFlashAttribute("error", Boolean.TRUE);
				}
				return ("redirect:/addProduct");
			}
		} else {
			return "403error";
		}

	}

	@GetMapping("/listProducts")
	public String listProductsAdmin(Model model, HttpServletRequest request) {
		if (request.getSession(false).getAttribute("userRole") == Role.ADMIN) {
			model.addAttribute("productList", productService.list());
			return ("listProducts");
		} else {
			return "403error";
		}
	}

	@GetMapping("/removeProduct/{id}")
	public String removeProduct(@PathVariable("id") int id, Model model, HttpServletRequest request) {
		if (request.getSession(false).getAttribute("userRole") == Role.ADMIN) {
			productService.delete(id);
			return ("redirect:/listProducts");
		} else {
			return "403error";
		}
	}

	@GetMapping("/editProduct/{id}")
	public String reachEditProduct(@PathVariable("id") int id, Model model, HttpServletRequest request) {
		if (request.getSession(false).getAttribute("userRole") == Role.ADMIN) {
			model.addAttribute("type", Type.values());
			model.addAttribute("product", productService.getProduct(id));
			return ("editProduct");
		} else {
			return "403error";
		}
	}

	@PostMapping("/editProduct/{id}/edit")
	public String editProduct(@PathVariable("id") int id, @RequestParam("file") CommonsMultipartFile file,
			@ModelAttribute("product") @Valid Product product, BindingResult result, HttpServletRequest request,
			RedirectAttributes attr) {
		if (request.getSession(false).getAttribute("userRole") == Role.ADMIN) {
			if (result.hasErrors()) {
				return ("redirect:/editProduct/" + id);
			} else {
				try {
					if (!file.isEmpty()) {
						String path = request.getServletContext().getRealPath("WEB-INF/" + UPLOAD_DIRECTORY);
						String filename = file.getOriginalFilename();
						String pathB = request.getServletContext().getRealPath("WEB-INF/");
						File fileToDelete = new File(pathB + product.getPicture());
						byte barr[] = file.getBytes();
						BufferedOutputStream bout = new BufferedOutputStream(
								new FileOutputStream(path + "/" + filename));
						bout.write(barr);
						bout.flush();
						product.setPicture(UPLOAD_DIRECTORY + '/' + filename);
					}
					productService.update(product);
					attr.addFlashAttribute("success", Boolean.TRUE);
				} catch (Exception e) {
					System.out.println(e);
					attr.addFlashAttribute("error", Boolean.TRUE);
				}
				return ("redirect:/listProducts");
			}
		} else {
			return "403error";
		}
	}
}