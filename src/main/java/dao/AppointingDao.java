package dao;

import entiy.Appointing;
import java.util.List;
import org.apache.ibatis.annotations.Param;


public interface AppointingDao {

	Appointing quaryAppointingInfo(@Param("appointingId") long appointingId);
	int insertAppointingInfo(@Param("appointingId") long appointingId);
	int changeAppointingInfo(@Param("appointingId") long appointingId);
	List<Appointing> quaryConsumerAppointing(@Param("consumerId") long consumerId);
	List<Appointing> quaryBaberAppointing(@Param("baberId") long baberId);
	
}
