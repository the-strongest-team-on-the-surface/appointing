package service;

import java.util.Date;
import java.util.List;

import entiy.Address;
import entiy.Appointing;
import entiy.Baber;
import entiy.Consumer;
import entiy.Service;
import entiy.Store;

public interface AppointingService {

	//Appointing
	List<Appointing> quaryConsumerAppointing(int consumerId);
	List<Appointing> quaryBaberAppointing(int baberId);
	List<Appointing> quaryConsumerAppointingByStatue(int consumerId, String status);
	List<Appointing> quaryBaberAppointingByStatue(int baberId, String status);
	
	int insertAppointingInfo(int appointingId,int consumerId,int baberId,int serviceId,Date appointedTime,String status);
	
	int changeAppointingInfo(int appointingId, String status);
	
	//Store
	int insertStoreInfo(int storeId, String name, String code, String telNum, String password, String detailedAddress);
	int changeStoreInfo(int storeId, String name, String code, String telNum, String password, String detailedAddress);
	Store quaryStorePassword(String telNum);
	Store quaryStoreInfo(int storeId);
	List<Store> quaryAllStore(String code);
	
	//addr
	List<Address> quaryNextLevel(String code);
	String quaryAddrName(String code);
	
	//baber
	Baber quaryBaberPassword( String telNum);
	Baber quaryBaBerInfo( int baberId);
	int insertBaberInfo( int baberId, 
			 String name,
			 String telNum,
			 boolean sex,
			 boolean isWorking,
			 int storeId,
			 String password,
			 String defaultWorkingTimePeriod,
			 String actualWorkingTimePeriod);
	int changeBaberInfo( int baberId, 
			 String name,
			 String telNum,
			 boolean sex,
			 boolean isWorking,
			 int storeId,
			 String password,
			 String defaultWorkingTimePeriod,
			 String actualWorkingTimePeriod);
	List<Baber> quaryStoreBaber( int storeId);
	
	//customer
	Consumer quaryConsumerPassword(String telNum);
	Consumer quaryConsumerInfo(int consumerId);
	int insertConsumerInfo(int consumerId, String name, String telNum, String password, boolean sex);
	int changeConsumerInfo(int consumerId, String name, String telNum, String password, boolean sex);
	
	//service
	int insertServiceInfo(int serviceId, String name, int duration, int baberId);
	int changeServiceInfo( int serviceId, String name, int duration, int baberId);
	List<Service> quaryServiceInfo(int baberId);
	
}
