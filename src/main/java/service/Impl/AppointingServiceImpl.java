package service.Impl;

import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.AddressDao;
import dao.AppointingDao;
import dao.BaberDao;
import dao.ConsumerDao;
import dao.ServiceDao;
import dao.StoreDao;
import entiy.Address;
import entiy.Appointing;
import entiy.Baber;
import entiy.Consumer;
import entiy.Store;
import service.AppointingService;

@Service
public class AppointingServiceImpl implements AppointingService {

	private Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired
	private AppointingDao appointingDao;
	@Autowired
	private StoreDao storeDao;
	@Autowired
	private ConsumerDao consumerDao;
	@Autowired
	private AddressDao addressDao;
	@Autowired
	private ServiceDao serviceDao;
	@Autowired
	private BaberDao baberDao;
	
	public List<Appointing> quaryConsumerAppointing(int consumerId){
		return appointingDao.quaryConsumerAppointing(consumerId);
	}
	public List<Appointing> quaryBaberAppointing(int baberId){
		return appointingDao.quaryBaberAppointing(baberId);
	}
	public List<Appointing> quaryConsumerAppointingByStatue(int consumerId, String status){
		return appointingDao.quaryConsumerAppointingByStatue(consumerId, status);
	}
	public List<Appointing> quaryBaberAppointingByStatue(int baberId, String status){
		return appointingDao.quaryBaberAppointingByStatue(baberId, status);
	}
	
	public int insertAppointingInfo(int appointingId,int consumerId,int baberId,int serviceId,Date appointedTime,String status) {
		return appointingDao.insertAppointingInfo(appointingId, consumerId, baberId, serviceId, appointedTime, status);
	}
	
	public int changeAppointingInfo(int appointingId, String status) {
		return appointingDao.changeAppointingInfo(appointingId, status);
	}
	public int insertStoreInfo(int storeId, String name, String code, String telNum, String password,
			String detailedAddress) {
		// TODO 自动生成的方法存根
		return storeDao.insertStoreInfo(storeId, name, code, telNum, password, detailedAddress);
	}
	public int changeStoreInfo(int storeId, String name, String code, String telNum, String password,
			String detailedAddress) {
		// TODO 自动生成的方法存根
		return storeDao.changeStoreInfo(storeId, name, code, telNum, password, detailedAddress);
	}
	public Store quaryStorePassword(String telNum) {
		// TODO 自动生成的方法存根
		return storeDao.quaryStorePassword(telNum);
	}
	public Store quaryStoreInfo(int storeId) {
		// TODO 自动生成的方法存根
		return storeDao.quaryStoreInfo(storeId);
	}
	public List<Store> quaryAllStore(String code) {
		// TODO 自动生成的方法存根
		return storeDao.quaryAllStore(code);
	}
	public List<Address> quaryNextLevel(String code) {
		// TODO 自动生成的方法存根
		return addressDao.quaryNextLevel(code);
	}
	public String quaryAddrName(String code) {
		// TODO 自动生成的方法存根
		return addressDao.quaryName(code);
	}
	public Baber quaryBaberPassword(String telNum) {
		// TODO 自动生成的方法存根
		return baberDao.quaryBaberPassword(telNum);
	}
	public Baber quaryBaBerInfo(int baberId) {
		// TODO 自动生成的方法存根
		return baberDao.quaryBaBerInfo(baberId);
	}
	public int insertBaberInfo(int baberId, String name, String telNum, boolean sex, boolean isWorking, int storeId,
			String password, String defaultWorkingTimePeriod, String actualWorkingTimePeriod) {
		// TODO 自动生成的方法存根
		return baberDao.insertBaberInfo(baberId, name, telNum, sex, isWorking, storeId, password, defaultWorkingTimePeriod, actualWorkingTimePeriod);
	}
	public int changeBaberInfo(int baberId, String name, String telNum, boolean sex, boolean isWorking, int storeId,
			String password, String defaultWorkingTimePeriod, String actualWorkingTimePeriod) {
		// TODO 自动生成的方法存根
		return baberDao.changeBaberInfo(baberId, name, telNum, sex, isWorking, storeId, password, defaultWorkingTimePeriod, actualWorkingTimePeriod);
	}
	public List<Baber> quaryStoreBaber(int storeId) {
		// TODO 自动生成的方法存根
		return baberDao.quaryStoreBaber(storeId);
	}
	public Consumer quaryConsumerPassword(String telNum) {
		// TODO 自动生成的方法存根
		return consumerDao.quaryConsumerPassword(telNum);
	}
	public Consumer quaryConsumerInfo(int consumerId) {
		// TODO 自动生成的方法存根
		return consumerDao.quaryConsumerInfo(consumerId);
	}
	public int insertConsumerInfo(int consumerId, String name, String telNum, String password, boolean sex) {
		// TODO 自动生成的方法存根
		return consumerDao.insertConsumerInfo(consumerId, name, telNum, password, sex);
	}
	public int changeConsumerInfo(int consumerId, String name, String telNum, String password, boolean sex) {
		// TODO 自动生成的方法存根
		return consumerDao.changeConsumerInfo(consumerId, name, telNum, password, sex);
	}
	public int insertServiceInfo(int serviceId, String name, int price, int duration, int baberId) {
		// TODO 自动生成的方法存根
		return serviceDao.insertServiceInfo(serviceId, name, price, duration, baberId);
	}
	public int changeServiceInfo(int serviceId, String name, int price, int duration, int baberId) {
		// TODO 自动生成的方法存根
		return serviceDao.changeServiceInfo(serviceId, name, price, duration, baberId);
	}
	public List<entiy.Service> quaryServiceInfo(int baberId) {
		// TODO 自动生成的方法存根
		return serviceDao.quaryServiceInfo(baberId);
	}
	public int deleteBaber(int baberId) {
		// TODO 自动生成的方法存根
		return baberDao.deleteBaber(baberId);
	}
	

}
