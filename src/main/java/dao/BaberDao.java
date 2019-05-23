package dao;

import entiy.Baber;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BaberDao {

	Baber quaryBaberPassword(@Param("telNum") String telNum);
	Baber quaryBaBerInfo(@Param("baberId") int baberId);
	int insertBaberInfo(@Param("baberId") int baberId, 
			@Param("name") String name,
			@Param("telNum") String telNum,
			@Param("sex") boolean sex,
			@Param("isWorking") boolean isWorking,
			@Param("storeId") int storeId,
			@Param("password") String password,
			@Param("defaultWorkingTimePeriod") String defaultWorkingTimePeriod,
			@Param("actualWorkingTimePeriod") String actualWorkingTimePeriod);
	int changeBaberInfo(@Param("baberId") int baberId, 
			@Param("name") String name,
			@Param("telNum") String telNum,
			@Param("sex") boolean sex,
			@Param("isWorking") boolean isWorking,
			@Param("storeId") int storeId,
			@Param("password") String password,
			@Param("defaultWorkingTimePeriod") String defaultWorkingTimePeriod,
			@Param("actualWorkingTimePeriod") String actualWorkingTimePeriod);
	List<Baber> quaryStoreBaber(@Param("storeId") int storeId);
	
}
