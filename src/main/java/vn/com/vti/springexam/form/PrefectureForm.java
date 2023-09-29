package vn.com.vti.springexam.form;

import java.util.ArrayList;
import java.util.List;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

public class PrefectureForm {
	@NotNull
	private Integer id;
	@NotBlank
	private String name;
	@NotNull
	private Integer population;
	
	private Integer section3Id;
	
	private List<Integer> infrastructureIdList = new ArrayList();
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getPopulation() {
		return population;
	}
	public void setPopulation(Integer population) {
		this.population = population;
	}
	public Integer getSection3Id() {
		return section3Id;
	}
	public void setSection3Id(Integer section3Id) {
		this.section3Id = section3Id;
	}
	public List<Integer> getInfrastructureIdList() {
		return infrastructureIdList;
	}
	public void setInfrastructureIdList(List<Integer> infrastructureIdList) {
		this.infrastructureIdList = infrastructureIdList;
	}
}
