package vn.com.vti.springexam.controller;

import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FortuneController {
	@RequestMapping(value="/fortune")
	public  String random(Model model) {
		String result ="";
		Random random = new Random();
		int val = random.nextInt(3)+1;
		switch(val) {
			case 1:
				result ="Lucky!";
				break;
			case 2:
				result ="Normal";
				break;
			case 3:
				result ="Bad";
				break;
		}
		model.addAttribute("String", result);
		return "fortune";
	}


}
