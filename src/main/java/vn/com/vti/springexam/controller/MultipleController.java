package vn.com.vti.springexam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("multiple")
public class MultipleController {
	@RequestMapping("input")
	public String input() {
		return "multiple/multipleInput";
	}
	
	@RequestMapping("result")
	public String result(@RequestParam("num") Integer num, Model model) {
		int result = num * 2;
		model.addAttribute("result", result);
		return "multiple/multipleResult";
	}
}
