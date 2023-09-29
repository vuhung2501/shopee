package vn.com.vti.springexam.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import vn.com.vti.springexam.entity.Infrastructure;
import vn.com.vti.springexam.entity.InfrastructureExample;
import vn.com.vti.springexam.entity.Prefecture;
import vn.com.vti.springexam.entity.PrefectureInfrastructure;
import vn.com.vti.springexam.entity.PrefectureInfrastructureExample;
import vn.com.vti.springexam.entity.Section3;
import vn.com.vti.springexam.entity.Section3Example;
import vn.com.vti.springexam.form.PrefectureForm;
import vn.com.vti.springexam.mapper.InfrastructureMapper;
import vn.com.vti.springexam.mapper.PrefectureInfrastructureMapper;
import vn.com.vti.springexam.mapper.PrefectureMapper;
import vn.com.vti.springexam.mapper.Section3Mapper;

@Controller
@RequestMapping("/prefectureUpdate")
public class PrefectureUpdateController {
	@Autowired
	private PrefectureMapper prefectureMapper;
	
	@Autowired
	private PrefectureInfrastructureMapper prefectureInfrastructureMapper;
	
	public PrefectureForm createForm() {
		return new PrefectureForm();
	}
	
	@RequestMapping("/init")
	public String init(@RequestParam Integer prefectureId,
			PrefectureForm prefectureForm, Model model) {
		
		Prefecture prefecture = 
				prefectureMapper.selectByPrimaryKey(prefectureId);
		
		prefectureForm.setId(prefecture.getId());
		prefectureForm.setName(prefecture.getName());
		prefectureForm.setPopulation(prefecture.getPopulation());
		prefectureForm.setSection3Id(prefecture.getSection3Id());
		
		PrefectureInfrastructureExample example = new PrefectureInfrastructureExample();
		example.createCriteria().andPrefectureIdEqualTo(prefectureForm.getId());
		
		List<PrefectureInfrastructure> prefectureInfrastructureList =
		prefectureInfrastructureMapper.selectByExample(example);
		
		for(PrefectureInfrastructure prI :prefectureInfrastructureList) {
			prefectureForm.getInfrastructureIdList().add(prI.getInfrastructureId());
		}
		
		return input(prefectureForm, model);
	}
	@Autowired
	private Section3Mapper section3Mapper;
	
	@Autowired
	private InfrastructureMapper infrastructureMapper;
	
	@RequestMapping("/input")
	public String input(PrefectureForm prefectureForm,Model model) {
		Section3Example section3Example = new Section3Example();
		section3Example.setOrderByClause("id");
		List<Section3> section3List = section3Mapper.selectByExample(section3Example);
		model.addAttribute("section3List", section3List);
		
		InfrastructureExample infrastructureExample = new InfrastructureExample();
		infrastructureExample.setOrderByClause("id");
		List<Infrastructure> infrastructureList =
				infrastructureMapper.selectByExample(infrastructureExample);
		model.addAttribute("infrastructureList", infrastructureList);
		return "prefecture/prefectureUpdateInput";		
	}
	
	@RequestMapping("/confirm")
	public String confirm(PrefectureForm prefectureForm, Model model) {
		if(prefectureForm.getSection3Id() !=null) {
			Section3 section3 = section3Mapper.selectByPrimaryKey(prefectureForm.getSection3Id());
			model.addAttribute("section3", section3); 
		}
		List<Infrastructure> infrastructureList = new ArrayList<>();
		List<Integer> infrastructureIdList = prefectureForm.getInfrastructureIdList();
		for (Integer infrastructureId : infrastructureIdList) {
			Infrastructure infrastructure =
					infrastructureMapper.selectByPrimaryKey(infrastructureId);
		infrastructureList.add(infrastructure);
		} 
		model.addAttribute("infrastructureList", infrastructureList);
		return "prefecture/prefectureUpdateConfirm";
	}
	
		@RequestMapping("/update")
		public String update( PrefectureForm prefectureForm, Model model) {
			Prefecture prefecture = new Prefecture();
			prefecture.setId(prefectureForm.getId());
			prefecture.setName(prefectureForm.getName());
			prefecture.setPopulation(prefectureForm.getPopulation());
			prefecture.setSection3Id(prefectureForm.getSection3Id());
			prefectureMapper.updateByPrimaryKey(prefecture);
			PrefectureInfrastructureExample prefectureInfrastructureExample =
					new PrefectureInfrastructureExample();
			prefectureInfrastructureExample.createCriteria().andPrefectureIdEqualTo(prefectureForm.getId());
			prefectureInfrastructureMapper.deleteByExample(prefectureInfrastructureExample);
			List<Integer> infrastructureIdList = prefectureForm.getInfrastructureIdList();
			for (Integer infrastructureId : infrastructureIdList) {
				PrefectureInfrastructure prefectureInfrastructure = new PrefectureInfrastructure();
				prefectureInfrastructure.setPrefectureId(prefectureForm.getId());
				prefectureInfrastructure.setInfrastructureId(infrastructureId);
				prefectureInfrastructureMapper.insert(prefectureInfrastructure);
	}    return "redirect:../prefectureList/index";  } 
}
