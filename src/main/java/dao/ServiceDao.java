package dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import entiy.Service;

public interface ServiceDao {

	Service quaryServiceInfo(@Param("baberId") long baberId);
	int insertServiceInfo(@Param("serviceId") long serviceId);
	int changeServiceInfo(@Param("serviceId") long serviceId);
	List<ServiceDao> quaryStoreService(@Param("baberId") long baberId);
	
}
