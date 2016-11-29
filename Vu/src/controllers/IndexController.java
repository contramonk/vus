package controllers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import data.IndexDao; 


@Controller
@SessionAttributes("")
public class IndexController {
	@Autowired
	private IndexDao indexDAO;
	
	@RequestMapping("register.do")
	public ModelAndView getVu(@RequestParam("username") String userName, @RequestParam("password") String password, @RequestParam("firstname") String firstName, @RequestParam("lastname") String lastName) {
		ModelAndView mv = new ModelAndView();
		indexDAO.addUser(userName, password, firstName, lastName);

		mv.setViewName("index.jsp");
		
		return mv;
	}
}
	