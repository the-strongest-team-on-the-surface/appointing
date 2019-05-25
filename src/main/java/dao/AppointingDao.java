package dao;

import entiy.Appointing;
import entiy.AppointingInfo;

import java.util.Date;
import java.util.List;
import org.apache.ibatis.annotations.Param;


public interface AppointingDao {

	Appointing quaryAppointingInfo(int appointingId);
	int insertAppointingInfo(@Param("appointingId") int appointingId, @Param("consumerId") int consumerId, @Param("baberId") int baberId, @Param("serviceId") int serviceId, @Param("appointedTime") String appointedTime, @Param("status") String status);
	int changeAppointingInfo(@Param("appointingId") int appointingId, @Param("status") String status);
	List<Appointing> quaryConsumerAppointing(int consumerId);
	List<Appointing> quaryBaberAppointing(int baberId);
	List<Appointing> quaryConsumerAppointingByStatue(@Param("consumerId") int consumerId, @Param("status") String status);
	List<Appointing> quaryBaberAppointingByStatue(@Param("baberId") int baberId, @Param("status") String status);
	
	List<AppointingInfo> quaryAppointingInfoByConsumerId(int consumerId);
}
