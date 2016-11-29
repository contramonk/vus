
package controllers;

import java.util.Date;
import java.util.List;

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
	public ModelAndView getVus(List<Vu> vus, ModelMap model) {
		System.out.println("test");
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String username = auth.getName(); // get logged in username
		model.addAttribute("username", username);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/auth/admin/vus.jsp");
		mv.addObject("Vus", vusDao.getVus(username));

		System.out.println(username);
		return mv;
	}

	@RequestMapping(path = "addVu.do") // for adding a Vu
	public ModelAndView addVu(@RequestParam("id") int id, @RequestParam("userId") int userId,
			@RequestParam("title") String title, @RequestParam("post") String post,
			@RequestParam("startDate") Date startDate, @RequestParam("endDate") Date endDate,
			@RequestParam("vu") Vu vu) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("vus.jsp");
		mv.addObject("Vu", vusDao.addVu(id, userId, title, post, startDate, endDate));

		return mv;
	}
	//
	// @RequestMapping("editVu.do") // for editing a Vu
	// public ModelAndView editVu(@RequestParam("id") int id,
	// @RequestParam("userId") int userId, @RequestParam("title") String title,
	// @RequestParam("post") String post, @RequestParam("startDate") Date
	// startDate,
	// @RequestParam("endDate") Date endDate, @RequestParam("vu") Vu vu) {
	// ModelAndView mv = new ModelAndView();
	// mv.setViewName("vus.jsp");
	// mv.addObject("Vu", vusDao.editVu(id, userId, title, post, endDate,
	// endDate, vu));
	//
	// return mv;
	// }
	//
	// @RequestMapping("removeVu.do") // for removing a Vu
	// public ModelAndView removeVu(@RequestParam("vu") Vu vu) {
	// ModelAndView mv = new ModelAndView();
	// mv.setViewName("vus.jsp");
	// mv.addObject("Vu", vusDao.removeVu(vu));
	//
	// return mv;
	// }

}