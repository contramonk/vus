package controllers;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import data.VuDAO;
import entities.Photo; 


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
	public ModelAndView startDate(@RequestParam("startDate") String startDate, @RequestParam("vuId") String vuId) throws ParseException {
		int id=Integer.parseInt(vuId);
		DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Date date = formatter.parse(startDate);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("vuAdmin.jsp");
		mv.addObject("Vu", vuDao.addStartDate(id, date));
		return mv;
	}
	
	
	@RequestMapping("addEndDate.do") //for adding a endDate to a Vu
	public ModelAndView endDate(@RequestParam("endDate") String endDate, @RequestParam("vuId") String vuId) throws ParseException {
		int id=Integer.parseInt(vuId);
		DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Date date = formatter.parse(endDate);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("vuAdmin.jsp");
		mv.addObject("Vu", vuDao.addEndDate(id, date));
		return mv;
	}
	
	@RequestMapping("addPhotos.do") //for adding a photo to a Vu
	  public ModelAndView addPhotos(@RequestParam("imgUrl") String imgUrl, @RequestParam("vuId") String vuId, Photo photo) {
		int id=Integer.parseInt(vuId);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("vuAdmin.jsp");
		mv.addObject("Vu", vuDao.addPhoto(id, imgUrl));	
		return mv;
	}
	
	@RequestMapping("deletePhoto.do") //for adding a photo to a Vu
	  public ModelAndView deletePhoto(@RequestParam("photoId") String photoId, @RequestParam("vuId") String vuId) {
		int id=Integer.parseInt(vuId);
		int phoId=Integer.parseInt(photoId);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("vuAdmin.jsp");
		mv.addObject("Vu", vuDao.deletePhoto(id, phoId));	
		return mv;
	}
	
	@RequestMapping("addPost.do") //for adding a photo to a Vu
	  public ModelAndView addPost(@RequestParam("post") String post, @RequestParam("vuId") String vuId) {
		int id=Integer.parseInt(vuId);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("vuAdmin.jsp");
		mv.addObject("Vu", vuDao.addPost(id, post));
			
		
		return mv;
	}
	
	@RequestMapping("addAddress.do") //for adding a photo to a Vu
	  public ModelAndView addLocation(@RequestParam("address") String address, @RequestParam("vuId") String vuId) {
		int id=Integer.parseInt(vuId);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("vuAdmin.jsp");
		mv.addObject("Vu", vuDao.addAddress(id, address));
		return mv;
	}
	
	@RequestMapping("addCity.do") //for adding a photo to a Vu
	  public ModelAndView addCity(@RequestParam("city") String city, @RequestParam("vuId") String vuId) {
		int id=Integer.parseInt(vuId);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("vuAdmin.jsp");
		mv.addObject("Vu", vuDao.addCity(id, city));
		return mv;
	}
	
	@RequestMapping("addState.do") //for adding a photo to a Vu
	  public ModelAndView addState(@RequestParam("state") String state, @RequestParam("vuId") String vuId) {
		int id=Integer.parseInt(vuId);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("vuAdmin.jsp");
		mv.addObject("Vu", vuDao.addState(id, state));
		return mv;
	}
	
	@RequestMapping("addZip.do") //for adding a photo to a Vu
	  public ModelAndView addZip(@RequestParam("zip") int zip, @RequestParam("vuId") String vuId) {
		int id=Integer.parseInt(vuId);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("vuAdmin.jsp");
		mv.addObject("Vu", vuDao.addZip(id, zip));
		return mv;
	}
	
	@RequestMapping("addPlace.do") //for adding a photo to a Vu
	  public ModelAndView addPlace(@RequestParam("place") String place, @RequestParam("vuId") String vuId) {
		int id=Integer.parseInt(vuId);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("vuAdmin.jsp");
		mv.addObject("Vu", vuDao.addPlace(id, place));
		return mv;
	}
	
	
	
}