package web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import entiy.Address;
import entiy.Baber;
import entiy.Consumer;
import entiy.Store;
import service.Impl.AppointingServiceImpl;

@Controller
@RequestMapping("/wtf")
public class AppointigController {

	// private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private AppointingServiceImpl appointingServiceImpl;

	@RequestMapping(method = RequestMethod.GET, value = "/addr")
	@ResponseBody
	public List<Address> addr(@RequestParam(value = "code", defaultValue = "0") String code) {
		List<Address> tlist = appointingServiceImpl.quaryNextLevel(code);

		return tlist;
	}

	@RequestMapping(method = RequestMethod.GET, value = "/tlist")
	@ResponseBody
	public PageInfo List(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		List<Consumer> tlist = new ArrayList<Consumer>();
		int a = 1;
		tlist.add(appointingServiceImpl.quaryConsumerInfo(a));
		PageHelper.startPage(pn, 5);
		PageInfo pageinfo = new PageInfo(tlist, 5);

		return pageinfo;
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/blist")
	@ResponseBody
	public PageInfo baberList(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		
		int a=1;
		List<Baber>blist = new ArrayList<Baber>();
		PageHelper.startPage(pn, 6);
		blist = appointingServiceImpl.quaryStoreBaber(a);
		PageInfo pageinfo = new PageInfo(blist, 5);

		return pageinfo;
	}

	@RequestMapping(method = RequestMethod.POST, value = "/consignup", produces = { "application/json; charset=utf-8" })
	@ResponseBody
	public int consignup(@RequestBody Consumer tel) {

		int result = appointingServiceImpl.insertConsumerInfo(tel.getConsumerId(), tel.getName(), tel.getTelNum(),
				tel.getPassword(), tel.isSex());
		return result;

	}

	@RequestMapping(method = RequestMethod.POST, value = "/stosignup", produces = { "application/json; charset=utf-8" })
	@ResponseBody
	public int stosignup(@RequestBody Store tel) {

		int result = appointingServiceImpl.insertStoreInfo(tel.getStoreId(), tel.getName(), tel.getcode(),
				tel.getTelNum(), tel.getPassword(), tel.getDetailedAddress());
		return result;

	}

	@RequestMapping(method = RequestMethod.POST, value = "/pwdverify", produces = { "application/json; charset=utf-8" })
	@ResponseBody
	public int pwdverify(@RequestBody Consumer tel) {

		String tpwd = appointingServiceImpl.quaryConsumerPassword(tel.getTelNum());
		if (tpwd.equals(tel.getPassword())) {
			return 1;
		} else {
			return 0;
		}
	}

}
