package vn.com.vti.springexam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import vn.com.vti.springexam.entity.Prefecture;
import vn.com.vti.springexam.entity.PrefectureExample;
import vn.com.vti.springexam.mapper.PrefectureMapper;

@Controller
public class PrefectureSearchController {
	
	@Autowired
	private PrefectureMapper prefectureMapper;
	
	@RequestMapping("/prefectureSearch/input")
	public String input() {
		return "prefecture/prefectureSearchInput";
	}
	
	@RequestMapping("/prefectureSearch/searchById")
	public String searchById(@RequestParam("prefectureId") Integer prefectureId,
			Model model) {
		Prefecture prefecture = prefectureMapper.selectByPrimaryKey(prefectureId);
		model.addAttribute("prefecture", prefecture);
		return "prefecture/prefectureSearchDetail";
	}
	
	@RequestMapping("/prefectureList/index")
	public String list(Model model) {
		PrefectureExample prefectureExample = new PrefectureExample();
		prefectureExample.setOrderByClause("ID");
		prefectureExample.createCriteria().andIdLessThan(10);
		List<Prefecture> prefectureList = 
				prefectureMapper.selectByExample(prefectureExample);
		
		model.addAttribute("prefectureList", prefectureList);
		
		return "prefecture/list";
	}
}
