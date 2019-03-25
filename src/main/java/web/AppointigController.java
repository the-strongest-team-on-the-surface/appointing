package web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import entiy.Consumer;
import service.Impl.AppointingServiceImpl;


@Controller
public class AppointigController {

	private Logger logger=LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private AppointingServiceImpl appointingServiceImpl;
	
	@RequestMapping("/tlist")
	public String List(@RequestParam(value="pn",defaultValue="1")Integer pn,Model model){
		List<Consumer> tlist = new ArrayList<Consumer>();
		tlist.add(new Consumer(11, "mike", "13900000000", true, "qqq"));

		PageHelper.startPage(pn, 5);
		PageInfo page = new PageInfo(tlist,5);
		
		model.addAttribute("pageinfo",page);
		
		return "list";
	}
	

	
	
}
