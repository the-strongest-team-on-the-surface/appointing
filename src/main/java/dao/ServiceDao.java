package dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import entiy.Service;

public interface ServiceDao {

	int insertServiceInfo(@Param("serviceId") int serviceId, @Param("name") String name, @Param("price") int price,
			@Param("duration") int duration, @Param("baberId") int baberId);

	int changeServiceInfo(@Param("serviceId") int serviceId, @Param("name") String name, @Param("price") int price,
			@Param("duration") int duration, @Param("baberId") int baberId);

	List<Service> quaryServiceInfo(@Param("baberId") int baberId);

}
