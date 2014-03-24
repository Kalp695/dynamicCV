package fi.monaco.aleksi.projekti.controller;

import javax.inject.Inject;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import fi.monaco.aleksi.projekti.bean.Message;
import fi.monaco.aleksi.projekti.bean.MessageImpl;
import fi.monaco.aleksi.projekti.bean.Person;
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
	
	//RETRIEVE CONTACT INFORMATION AND GENERATE MESSAGE FORM
	@RequestMapping(value="/contactInfo", method=RequestMethod.GET)
	public String getContactInfo(Model model) {
		
		//GET CONTACT INFORMATION
		Person newPerson = dao.getContInfo(1);
		model.addAttribute("person", newPerson);
		
		//GENERATE MESSAGE FORM
		Message newMessage = new MessageImpl();
		model.addAttribute("message", newMessage);
		
		return "user/contactInfo";	
	}
	
	//SEND CONTACT MESSAGE
	@RequestMapping(value="/contactInfo", method=RequestMethod.POST)
	public String send(Model model, @ModelAttribute(value="message") @Valid MessageImpl message, BindingResult result,
			final RedirectAttributes redirectAttributes){
		
		//CHECK FOR ERRORS
		if(result.hasErrors()){
			
			//GET CONTACT INFO
			Person newPerson = dao.getContInfo(1);
			model.addAttribute("person", newPerson);
			
			return "user/contactInfo";
		}else{
			dao.saveMessage(1, message);
			redirectAttributes.addFlashAttribute("sM", "Message sent successfully!");
			return "redirect:/contactInfo";
		}
	}
}
