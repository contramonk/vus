package controllers;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import data.VuDao;
import entities.Vu; 


@Repository 
@SessionAttributes("")
public class VuController {
	@Autowired
	private VuDao vuDao;
	
	@RequestMapping("addTitle.do") //for adding a title to a Vu
	  public ModelAndView title(@RequestParam("title") String title, Vu vu) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("vuAdmin.jsp");
		mv.addObject("Vu", vuDao.setTitle(vu, title ));
			
		return mv;
	}
	
	@RequestMapping("addDate.do") //for adding a startDate to a Vu
	  public ModelAndView startDate(@RequestParam("startDate") Date startDate, Vu vu) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("vuAdmin.jsp");
		mv.addObject("Vu", vuDao.setStartDate(vu, startDate));
			
		return mv;
	}
	
	@RequestMapping("addDate.do") //for adding a startDate to a Vu
	  public ModelAndView endDate(@RequestParam("endDate") Date endDate, Vu vu) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("vuAdmin.jsp");
		mv.addObject("Vu", vuDao.setStartDate(vu, endDate));
			
		return mv;
	}
}
