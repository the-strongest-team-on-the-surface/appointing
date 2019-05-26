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
import entiy.Appointing;
import entiy.AppointingInfo;
import entiy.Baber;
import entiy.Consumer;
import entiy.Service;
import entiy.Store;
import service.Impl.AppointingServiceImpl;

@Controller
@RequestMapping("/wtf")
public class AppointigController {

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private AppointingServiceImpl appointingServiceImpl;
	String addressCode = "0";

	@RequestMapping(method = RequestMethod.GET, value = "/addr")
	@ResponseBody
	public List<Address> addr(@RequestParam(value = "code", defaultValue = "0") String code) {
		List<Address> tlist = appointingServiceImpl.quaryNextLevel(code);

		return tlist;
	}

	@RequestMapping(method = RequestMethod.POST, value = "/blist")
	@ResponseBody
	public PageInfo baberList(int pn, int storeId, HttpServletRequest request, HttpServletResponse response) {

		List<Baber> blist = new ArrayList<Baber>();
		PageHelper.startPage(pn, 6);
		blist = appointingServiceImpl.quaryStoreBaber(storeId);
		PageInfo pageinfo = new PageInfo(blist, 5);

		return pageinfo;
	}

	@RequestMapping(method = RequestMethod.POST, value = "/sinfo")
	@ResponseBody
	public Store sinfo(int storeId, HttpServletRequest request, HttpServletResponse response) {

		Store sif = appointingServiceImpl.quaryStoreInfo(storeId);
		String tcode = sif.getcode();
		String tsrr = "";

		if (tcode.length() == 2) {
			tsrr = tsrr + appointingServiceImpl.quaryAddrName(tcode);
		} else if (tcode.length() == 6) {
			tsrr = tsrr + appointingServiceImpl.quaryAddrName(tcode.substring(0, 2))
					+ appointingServiceImpl.quaryAddrName(tcode.substring(0, 4))
					+ appointingServiceImpl.quaryAddrName(tcode);
		} else if (tcode.length() == 9) {
			tsrr = tsrr + appointingServiceImpl.quaryAddrName(tcode.substring(0, 2))
					+ appointingServiceImpl.quaryAddrName(tcode.substring(0, 4))
					+ appointingServiceImpl.quaryAddrName(tcode.substring(0, 6))
					+ appointingServiceImpl.quaryAddrName(tcode);
		} else {
			tsrr = tsrr + "false";
		}

		sif.setcode(tsrr);

		return sif;

	}

	@RequestMapping(method = RequestMethod.POST, value = "/babersignup", produces = {
			"application/json; charset=utf-8" })
	@ResponseBody
	public int babersignup(@RequestBody Baber tel) {

		String btime = tel.getDefaultWorkingTimePeriod();
		String etime = tel.getActualWorkingTimePeriod();
		String ttime = "";
		for (int i = 0; i < Integer.parseInt(btime); i++) {
			ttime += "0";
		}
		for (int i = Integer.parseInt(btime); i < Integer.parseInt(etime); i++) {
			ttime += "1";
		}
		for (int i = Integer.parseInt(etime); i < 24; i++) {
			ttime += "0";
		}

		int result = appointingServiceImpl.insertBaberInfo(tel.getBaberId(), tel.getName(), tel.getTelNum(),
				tel.isSex(), tel.isWorking(), tel.getStoreId(), tel.getPassword(), ttime, ttime + ttime + ttime);
		return result;
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

	@RequestMapping(method = RequestMethod.POST, value = "/pwdverify")
	@ResponseBody
	public int pwdverify(String telNum, String password, int userType, HttpServletRequest request,
			HttpServletResponse response) {
		String tpwd;
		switch (userType) {
		case 1:
			tpwd = appointingServiceImpl.quaryConsumerPassword(telNum).getPassword();
			break;
		case 2:
			tpwd = appointingServiceImpl.quaryStorePassword(telNum).getPassword();
			break;
		case 3:
			tpwd = appointingServiceImpl.quaryBaberPassword(telNum).getPassword();
			break;
		default:
			return 0;
		}
		if (tpwd.equals(password)) {
			return 1;
		} else {
			return 0;
		}
	}

	@RequestMapping(method = RequestMethod.GET, value = "/storesCode")
	@ResponseBody
	public void List(@RequestParam(value = "code", defaultValue = "1") String code) {

		addressCode = code;
	}

	@RequestMapping(method = RequestMethod.POST, value = "/stores")
	@ResponseBody
	public PageInfo List(int pn, String code, HttpServletRequest request, HttpServletResponse response) {

		List<Store> tlist = new ArrayList<Store>();

		PageHelper.startPage(pn, 6);
		tlist = appointingServiceImpl.quaryAllStore(code);
		PageInfo pageinfo = new PageInfo(tlist, 5);
		return pageinfo;
	}

	@RequestMapping(method = RequestMethod.GET, value = "/baberBystoreId")
	@ResponseBody
	public List<Baber> baberBystoreId(@RequestParam(value = "storeId", defaultValue = "1") int storeId) {
		List<Baber> tlist = new ArrayList<Baber>();
		tlist = appointingServiceImpl.quaryStoreBaber(storeId);
		return tlist;
	}

	@RequestMapping(method = RequestMethod.GET, value = "/servicesBybaberId")
	@ResponseBody
	public List<Service> sevicesBybaberId(@RequestParam(value = "baberId", defaultValue = "1") int baberId) {
		List<Service> tlist = new ArrayList<Service>();
		tlist = appointingServiceImpl.quaryServiceInfo(baberId);
		return tlist;
	}

	@RequestMapping(method = RequestMethod.GET, value = "/baberinfoByid")
	@ResponseBody
	public Baber baberinfoByid(@RequestParam(value = "baberId", defaultValue = "1") int baberId) {
		Baber tlist = new Baber();
		tlist = appointingServiceImpl.quaryBaBerInfo(baberId);
		return tlist;
	}

	@RequestMapping(method = RequestMethod.POST, value = "/addAppoint")
	@ResponseBody
	public boolean addAppoint(Appointing app,HttpServletRequest request,HttpServletResponse response){
		
		appointingServiceImpl.insertAppointingInfo(app.getAppointingId(), app.getConsumerId(), app.getBaberId(), app.getServiceId(), app.getAppointedTime(), app.getStatus());

		return true;
	}

	@RequestMapping(method = RequestMethod.POST, value = "/storebyid")
	@ResponseBody
	public Store getStoreByTel(String telNum, HttpServletRequest request, HttpServletResponse response) {
		return appointingServiceImpl.quaryStorePassword(telNum);
	}

	@RequestMapping(method = RequestMethod.POST, value = "/deletebaber", produces = {
			"application/json; charset=utf-8" })
	@ResponseBody
	public int deletebaber(@RequestBody Baber tel) {
		return appointingServiceImpl.deleteBaber(tel.getBaberId());
	}

	@RequestMapping(method = RequestMethod.POST, value = "/addservice", produces = {
			"application/json; charset=utf-8" })
	@ResponseBody
	public int addservice(@RequestBody Service tel) {
		return appointingServiceImpl.insertServiceInfo(tel.getServiceId(), tel.getName(), tel.getPrice(), 1, tel.getBaberId());
	}

	
	@RequestMapping(method = RequestMethod.POST, value = "/consumerbytel")
	@ResponseBody
	public Consumer getConsumerByTel(String telNum, HttpServletRequest request,HttpServletResponse response) {
		
		return appointingServiceImpl.quaryConsumerPassword(telNum);
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/changebabertime")
	@ResponseBody
	public boolean changeBaberTime(int baberId,String actualWorkingTimePeriod, HttpServletRequest request,HttpServletResponse response) {
		Baber b = appointingServiceImpl.quaryBaBerInfo(baberId);
		appointingServiceImpl.changeBaberInfo(b.getBaberId(), b.getName(), b.getTelNum(), b.isSex(), b.isWorking(), b.getStoreId(), b.getPassword(), b.getDefaultWorkingTimePeriod(), actualWorkingTimePeriod);
		return true;
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/queryAppointingInfoByConsumerId")
	@ResponseBody
	public List<AppointingInfo> queryAppointingInfoByConsumerId(Integer consumerId,HttpServletRequest request,HttpServletResponse response) {
		
		return appointingServiceImpl.quaryAppointingInfoByConsumerId(consumerId);
	}
};
