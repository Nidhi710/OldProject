package com.cakeandcupcakes.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cakeandcupcakes.service.CategoryService;
import com.cakeandcupcakes.service.ProductService;
import com.cakeandcupcakes.service.Sub_CategoryService;

@Controller
public class CakeAndCupcakesController {
	@Autowired(required=true)
	private CategoryService categoryService;
	@Autowired(required=true)
	private ProductService productService;
	@Autowired(required=true)
	private Sub_CategoryService sub_categoryService;
	
	@RequestMapping("/")
	public String gethome(Model model){
	model.addAttribute("categoryList", this.categoryService.list());
	model.addAttribute("productList", this.productService.list());
	model.addAttribute("sub_categoryList", this.sub_categoryService.list());
	model.addAttribute("productdisplay", this.productService.list());
	return "index";
	}
	
	@RequestMapping("/aboutus")
	public String getaboutus(){
		return"aboutus";
	}
	@RequestMapping("/contact")
	public String getcontact(){
		return"contact";
	}
		
		
}
