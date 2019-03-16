package dao;

import entiy.Appointing;
import java.util.List;
import org.apache.ibatis.annotations.Param;


public interface AppointingDao {

	Appointing quaryAppointingInfo(@Param("appointingId") int appointingId);
	int insertAppointingInfo(@Param("appointingId") int appointingId);
	int changeAppointingInfo(@Param("appointingId") int appointingId);
	List<Appointing> quaryConsumerAppointing(@Param("consumerId") int consumerId);
	List<Appointing> quaryBaberAppointing(@Param("baberId") int baberId);
	
}
