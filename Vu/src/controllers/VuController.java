package controllers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.SessionAttributes;

import data.vuDAO; 


@Repository 
@SessionAttributes("")
public class vuController {
	@Autowired
	private vuDAO vuDao;
	
	@RequestMapping("addTitle.do") //for adding a title to a Vu
	  public ModelAndView title(@RequestParam("title") String title) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("vuAdmin.jsp");
		mv.addObject("photo", dao.getPhotobyIndex(navigate));
			
		return mv;
	}
}
