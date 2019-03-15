package dao;

import org.apache.ibatis.annotations.Param;
import entiy.Consumer;

public interface ConsumerDao {

	Consumer quaryConsumerPassword(@Param("telNum") String telNum, @Param("password") String password);
	Consumer quaryConsumerInfo(@Param("consumerId") long consumerId);
	int insertConsumerInfo(@Param("consumerId") long conmsumerId);
	int changeConsumerInfo(@Param("consumerId") long consumerId);
	
}
