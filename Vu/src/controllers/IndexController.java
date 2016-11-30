package controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	public ModelAndView getVu(@RequestParam("username") String userName, @RequestParam("password") String password,
			@RequestParam("firstname") String firstName, @RequestParam("lastname") String lastName) {
		ModelAndView mv = new ModelAndView();
		indexDAO.addUser(userName, password, firstName, lastName);

		mv.setViewName("index.jsp");

		return mv;
	}

	@RequestMapping(value = "/error.do", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {
		System.out.println("test");
		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid username and password!");
		}
		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}
		model.setViewName("/index.jsp");

		return model;
	}
}
