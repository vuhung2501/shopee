package vn.com.vti.springexam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import vn.com.vti.springexam.entity.Infrastructure;
import vn.com.vti.springexam.entity.InfrastructureExample;
import vn.com.vti.springexam.mapper.InfrastructureMapper;

@Controller
public class InfrastructureSearchController {
	
	@Autowired
	private InfrastructureMapper infrastructureMapper;
	
	@RequestMapping("/infrastructureSearch/input")
	public String input() {
		return "infrastructure/infrastructureSearchInput";
	}
	
	@RequestMapping("/infrastructureSearch/searchById")
	public String searchById(@RequestParam("infrastructureId") Integer infrastructureId,
			Model model) {
		Infrastructure infrastructure = infrastructureMapper.selectByPrimaryKey(infrastructureId);
		model.addAttribute("infrastructure", infrastructure);
		return "infrastructure/infrastructureSearchDetail";
	}
	@RequestMapping("/infrastructureSearch/index")
	public String list(Model model) {
		InfrastructureExample infrastructureExample = new InfrastructureExample();
		infrastructureExample.setOrderByClause("ID");
		List<Infrastructure> infrastructureList = 
				infrastructureMapper.selectByExample(infrastructureExample);
		model.addAttribute("infrastructureList", infrastructureList);
		return "infrastructure/list";
	}
	
}
