package vn.com.vti.springexam.controller;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AboutController {
	@RequestMapping("/about")
	public String idx(Model model, @RequestParam("fullname") String fullName, 
			@RequestParam("age") String age) {
		Date date = new Date();
		model.addAttribute("date", date);
		model.addAttribute("fullname", fullName);
		model.addAttribute("age", age);
		return "sample";
	}
}
