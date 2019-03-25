package dao;

import org.apache.ibatis.annotations.Param;
import entiy.Consumer;

public interface ConsumerDao {

	String quaryConsumerPassword(String telNum);
	Consumer quaryConsumerInfo(int consumerId);
	int insertConsumerInfo(@Param("consumerId")int consumerId, @Param("name")String name, @Param("telNum")String telNum, @Param("password")String password, @Param("sex")boolean sex);
	int changeConsumerInfo(@Param("consumerId")int consumerId, @Param("name")String name, @Param("telNum")String telNum, @Param("password")String password, @Param("sex")boolean sex);
	
}
