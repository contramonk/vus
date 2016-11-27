
package controllers;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import data.VuDao;
import data.VusDao;
import entities.Vu;
@Repository 
@SessionAttributes("")
public class vusController {

@Autowired
private VusDao vusDao;

@RequestMapping("addYear.do") //for adding a year
public ModelAndView addYear(@RequestParam("year") int year) {
	ModelAndView mv = new ModelAndView();
	mv.setViewName("vus.jsp");
	mv.addObject(vusDao.addYear(year));
	
	return mv;
}

@RequestMapping("editYear.do") //for editing a year
public ModelAndView editYear(@RequestParam("year") int year) {
	ModelAndView mv = new ModelAndView();
	mv.setViewName("vus.jsp");
	mv.addObject(vusDao.editYear(year));
	
	return mv;
}

@RequestMapping("removeYear.do") //for removing a year
public ModelAndView removeYear(@RequestParam("year") int year) {
	ModelAndView mv = new ModelAndView();
	mv.setViewName("vus.jsp");
	mv.addObject(vusDao.removeYear(year));
	
	return mv;
}

@RequestMapping("addLocation.do") //for adding a photo to a Vu
public ModelAndView addLocation(@RequestParam("address") String address, @RequestParam("city") String city, 
		@RequestParam("state") String state, @RequestParam("zip")String zip, Vu vu) {
	ModelAndView mv = new ModelAndView();
	mv.setViewName("vuAdmin.jsp");
	mv.addObject("Vu", vuDao.setPhoto(vu, post));
	
	return mv;
}


}