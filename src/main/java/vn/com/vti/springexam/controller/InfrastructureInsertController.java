package vn.com.vti.springexam.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import vn.com.vti.springexam.form.InfrastructureForm;

@Controller
@RequestMapping("infrastructureInsert")
public class InfrastructureInsertController {
	@ModelAttribute
	public InfrastructureForm creaForm() {
		return new InfrastructureForm();
	}
	
	@RequestMapping("input")
	public String input(InfrastructureForm infrastructureForm) {
		return "infrastructure/infrastructureInsertInput";
	}
	
	@RequestMapping("confirm")
	public String confirm(@Valid InfrastructureForm infrastructureForm,
			BindingResult bindingResult, Model model) {
		if(bindingResult.hasErrors()) {
			return input(infrastructureForm);
		}
		return "infrastructure/infrastructureInsertConfirm";
	}
}

