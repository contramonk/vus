
package controllers;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import data.VusDao;
import entities.Vu;

@Controller
@SessionAttributes("")
public class vusController {

//	@Autowired
//	private VusDao vusDao;
//
//	@RequestMapping("addYear.do") // for adding a year
//	public ModelAndView addYear(@RequestParam("year") int year) {
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("vus.jsp");
//		mv.addObject(vusDao.addYear(year));
//
//		return mv;
//	}
//
//	@RequestMapping("editYear.do") // for editing a year
//	public ModelAndView editYear(@RequestParam("year") int year) {
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("vus.jsp");
//		mv.addObject(vusDao.editYear(year));
//
//		return mv;
//	}
//
//	@RequestMapping("removeYear.do") // for removing a year
//	public ModelAndView removeYear(@RequestParam("year") int year) {
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("vus.jsp");
//		mv.addObject(vusDao.removeYear(year));
//
//		return mv;
//	}
//
//	@RequestMapping("addVu.do") // for adding a Vu
//	public ModelAndView addVu(@RequestParam("id") int id, @RequestParam("userId") int userId, @RequestParam("title") String title,
//			@RequestParam("post") String post, @RequestParam("startDate") Date startDate,
//			@RequestParam("endDate") Date endDate, @RequestParam("vu") Vu vu) {
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("vus.jsp");
//		mv.addObject("Vu", vusDao.addVu(id, userId, title, post, endDate, endDate, vu));
//
//		return mv;
//	}
//
//	@RequestMapping("editVu.do") // for editing a Vu
//	public ModelAndView editVu(@RequestParam("id") int id, @RequestParam("userId") int userId, @RequestParam("title") String title,
//			@RequestParam("post") String post, @RequestParam("startDate") Date startDate,
//			@RequestParam("endDate") Date endDate, @RequestParam("vu") Vu vu) {
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("vus.jsp");
//		mv.addObject("Vu", vusDao.editVu(id, userId, title, post, endDate, endDate, vu));
//
//		return mv;
//	}
//
//	@RequestMapping("removeVu.do") // for removing a Vu
//	public ModelAndView removeVu(@RequestParam("vu") Vu vu) {
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("vus.jsp");
//		mv.addObject("Vu", vusDao.removeVu(vu));
//
//		return mv;
//	}

}