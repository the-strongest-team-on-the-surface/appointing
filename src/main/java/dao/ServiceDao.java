package dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import entiy.Service;

public interface ServiceDao {

	Service quaryServiceInfo(@Param("baberId") int baberId);
	int insertServiceInfo(@Param("serviceId") int serviceId);
	int changeServiceInfo(@Param("serviceId") int serviceId);
	List<ServiceDao> quaryStoreService(@Param("baberId") int baberId);
	
}
