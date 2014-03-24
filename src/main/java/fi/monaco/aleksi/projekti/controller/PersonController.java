package fi.monaco.aleksi.projekti.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fi.monaco.aleksi.projekti.bean.Person;
import fi.monaco.aleksi.projekti.bean.PersonImpl;
import fi.monaco.aleksi.projekti.dao.PersonDAO;

@Controller
public class PersonController {
	
	@Inject
	private PersonDAO dao;
	
	public PersonDAO getDao() {
		return dao;
	}

	public void setDao(PersonDAO dao) {
		this.dao = dao;
	}
	
	//WELCOME PAGE
	@RequestMapping(value="/welcome")
	public String getWelcomePage(){
		return "welcome";
	}
	
	//RETRIEVE CONTACT INFORMATION
	@RequestMapping(value="/contactInfo", method=RequestMethod.GET)
	public String getContactInfo(Model model) {
		int id = 1;
		
		Person newPerson = dao.getContInfo(id);
		model.addAttribute("person", newPerson);
		
		return "user/contactInfo";
		
	}

}
