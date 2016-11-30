
package controllers;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import data.VusDAO;
import entities.Vu;

@Controller
// @SessionAttributes("")
public class VusController {

	@Autowired
	private VusDAO vusDao;

	@RequestMapping("getVus.do")
	public ModelAndView getVus(ModelMap model) {
		System.out.println("test");
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String username = auth.getName(); // get logged in username
		model.addAttribute("username", username);
		ModelAndView mv = new ModelAndView();
		Map<Integer, List<Vu>> vuMap = vusDao.getVusByYear(username);
		mv.addObject("vuMap", vuMap);
		mv.addObject("user", vusDao.getUserByUsername(username));
		mv.setViewName("vus.jsp");
		mv.addObject("Vus", vusDao.getVus(username));

		System.out.println(username);
		return mv;
	}

	@RequestMapping(path ="addVu.do") // for adding a Vu
	public ModelAndView addVu(@RequestParam("username") String username,
			@RequestParam("title") String title,
			@RequestParam("startDate") Date startDate) {
		ModelAndView mv = new ModelAndView();
		System.out.println(username);
		mv.setViewName("vuAdmin.jsp");
		mv.addObject("Vu", vusDao.addVu(username, title, startDate));

		return mv;
	}
	
	 @RequestMapping("getVusByYear.do") // for editing a Vu
	 public ModelAndView getVusByYear(@RequestParam("Vus") List<Vu> vus, @RequestParam("username") String username) {
	 ModelAndView mv = new ModelAndView();
	 mv.setViewName("vus.jsp");
	 mv.addObject("VusByYear", vusDao.getVusByYear(username));
	
	 return mv;
	 }
	
	 @RequestMapping("deleteVu.do") // for removing a Vu
	 public ModelAndView removeVu(@RequestParam("vu") Vu vu) {
	 ModelAndView mv = new ModelAndView();
	 mv.setViewName("vus.jsp");
	 vusDao.removeVu(vu);
	 return mv;
	 }

}