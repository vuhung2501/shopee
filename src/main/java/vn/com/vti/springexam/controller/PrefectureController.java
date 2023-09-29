package vn.com.vti.springexam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import vn.com.vti.springexam.entity.Prefecture;
import vn.com.vti.springexam.entity.PrefectureExample;
import vn.com.vti.springexam.mapper.PrefectureMapper;

@Controller
public class PrefectureController {
	
	@Autowired
	private PrefectureMapper prefectureMapper;
	
	@RequestMapping("prefecture/list")
	public String list(Model model) {
		
		PrefectureExample prefectureExample = new PrefectureExample();
		prefectureExample.setOrderByClause("id");
		prefectureExample.setDistinct(true);
		List<Prefecture> prefectureList=
		prefectureMapper.selectByExample(prefectureExample);
		model.addAttribute("prefectureList", prefectureList);
		
		return "prefecture/list";
	}
}
