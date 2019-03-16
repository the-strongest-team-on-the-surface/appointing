package dao;

import entiy.Appointing;

import java.util.Date;
import java.util.List;
import org.apache.ibatis.annotations.Param;


public interface AppointingDao {

	Appointing quaryAppointingInfo(int appointingId);
	int insertAppointingInfo(@Param("appointingId") int appointingId, @Param("consumerId") int consumerId, @Param("baberId") int baberId, @Param("serviceId") int serviceId, @Param("appointedTime") Date appointedTime, @Param("status") String status);
	int changeAppointingInfo(@Param("appointingId") int appointingId, @Param("status") String status);
	List<Appointing> quaryConsumerAppointing(int consumerId);
	List<Appointing> quaryBaberAppointing(int baberId);
	
}
