package controllers;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import data.VuDAO;
import entities.Vu; 


@Controller
@SessionAttributes("")
public class VuController {
	@Autowired
	private VuDAO vuDao;
	
	@RequestMapping("getVu.do")
	 
	public ModelAndView getVu(@RequestParam("vuId") String vuId){
		int id=Integer.parseInt(vuId);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("vuAdmin.jsp");
		mv.addObject("Vu", vuDao.getVu(id));
		
		return mv;
	}
	
	
	@RequestMapping("addTitle.do") //for adding a title to a Vu
	  public ModelAndView title(@RequestParam("vuId") String vuId, @RequestParam("title") String title) {
		int id=Integer.parseInt(vuId);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("vuAdmin.jsp");
		mv.addObject("Vu", vuDao.addTitle(id, title));
		
		return mv;
	}
	
	@RequestMapping("addDate.do") //for adding a startDate to a Vu
	public ModelAndView startDate(@RequestParam("startDate") Date startDate, Vu vu) {
	return new ModelAndView();
	}
	
	
//	@RequestMapping("addDate.do") //for adding a endDate to a Vu
//	  public ModelAndView endDate(@RequestParam("endDate") Date endDate, Vu vu) {
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("vuAdmin.jsp");
//		mv.addObject("Vu", vuDao.setEndDate(vu, endDate));
//			
//		return mv;
//	}
//	
//	@RequestMapping("addPhotos.do") //for adding a photo to a Vu
//	  public ModelAndView addPhotos(@RequestParam("photo") String imgUrl, Vu vu) {
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("vuAdmin.jsp");
//		mv.addObject("Vu", vuDao.addPhoto(vu, imgUrl));
//			
//		return mv;
//	}
//	
//	@RequestMapping("addPost.do") //for adding a photo to a Vu
//	  public ModelAndView addPost(@RequestParam("post") String post, Vu vu) {
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("vuAdmin.jsp");
//		mv.addObject("Vu", vuDao.setPhoto(vu, post));
//			
//		
//		return mv;
//	}
//	
//	@RequestMapping("addLocation.do") //for adding a photo to a Vu
//	  public ModelAndView addLocation(@RequestParam("address") String address, @RequestParam("city") String city, 
//			  @RequestParam("state") String state, @RequestParam("zip")String zip, Vu vu) {
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("vuAdmin.jsp");
//		mv.addObject("Vu", vuDao.setPhoto(vu, post));
//			
//		return mv;
//	}
//	
//	
}