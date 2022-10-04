package com.blurdel.web.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.blurdel.web.model.Person;
import com.blurdel.web.model.PersonList;


@Controller
public class HomeController {

	
	@GetMapping(value="/")
	public ModelAndView getHomeView() {
		return new ModelAndView("login", "pPerson", new Person());
	}

	
	@PostMapping(value="/doLogin")
	public ModelAndView getModView(@ModelAttribute Person person) {
		System.out.println("Login: " + person.toString());
		
		ModelAndView mav = new ModelAndView("update");
		
		PersonList theList = new PersonList();
		theList.getPersonList().add(new Person("Zoey", "", 15));
		theList.getPersonList().add(new Person("", "", 0));
		mav.addObject("pList", theList);
		
		return mav;
	}
	
	
	@PostMapping(value="/doUpdate")
	public ModelAndView getListView(@ModelAttribute("pList") PersonList pList) {
		
		List<Person> list = pList.getPersonList();
		for (Person p :list) {
			System.out.println("Person: " + p.toString());
		}
		
		ModelAndView mav = new ModelAndView("viewList");
		mav.addObject("pList", pList);
		
		return mav;
	}

	
	
	@GetMapping(value="/showGrid")
	public ModelAndView getGridView() {
		ModelAndView mav = new ModelAndView("grid");
		
		PersonList theList = new PersonList();
		theList.getPersonList().add(new Person("Zoey", "Bear", 15));
		theList.getPersonList().add(new Person("Tana", "T", 9));
		theList.getPersonList().add(new Person("Camy", "R", 10));
		mav.addObject("pList", theList);
		
		return mav;
	}
	
	@PostMapping(value="/procGrid")
	public ModelAndView getOtherListView(@ModelAttribute("pList") PersonList pList) {
		
		List<Person> list = pList.getPersonList();
		for (Person p : list) {
			System.out.println("Person: " + p.toString());
		}
		
		ModelAndView mav = new ModelAndView("viewList");
		mav.addObject("pList", pList);
		
		return mav;
	}
	
}
