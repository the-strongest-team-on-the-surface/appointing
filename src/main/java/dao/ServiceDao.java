package dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import entiy.Service;

public interface ServiceDao {

	int insertServiceInfo(@Param("serviceId") int serviceId);
	int changeServiceInfo(@Param("serviceId") int serviceId,@Param("name") String name,@Param("duration") int duration,@Param("baberId") int baberId);
	List<Service> quaryServiceInfo(@Param("baberId") int baberId);
	
}
