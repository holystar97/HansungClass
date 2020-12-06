package kr.ac.hansung.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.hansung.model.ClassInfo;
import kr.ac.hansung.service.ClassService;


@Controller
public class ClassController {

	@Autowired
	private ClassService classService;
	
	@RequestMapping("/classes")
	public String showCourses(Model model) {
		List<ClassInfo> classes = classService.getCurrent();
		model.addAttribute("classes", classes);
		
		return "classes";
	}
	@RequestMapping("/certainclass")
	public String showCertainClasses(Model model, int year, int semester) {
		
		List<ClassInfo> certainclass = classService.getCertainCurrent(year, semester);
		model.addAttribute("certainclass", certainclass);
		return "certainclass";
	}
	
	@RequestMapping("/createclass")
	public String createClass(Model model) {
		
		model.addAttribute("classinfo", new ClassInfo());

		return "createclass";

	}
	
	@RequestMapping("/docreate")
	public String doCreate(Model model, @Valid ClassInfo classinfo, BindingResult result) {
		
		if(result.hasErrors()) {
			System.out.println("== Form data does not validated ==");
		
			List<ObjectError> errors = result.getAllErrors();
			
			for(ObjectError error:errors) {
				System.out.println(error.getDefaultMessage());
			}
			return "createclass";
		}
		
		classService.insert(classinfo);
		
		return "classcreated";
	}
	
	
}
