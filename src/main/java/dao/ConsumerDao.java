package dao;

import org.apache.ibatis.annotations.Param;

import entiy.Consumer;

public interface ConsumerDao {

	Consumer quaryConsumerPassword(@Param("telNum") String telNum, @Param("password") String password);
	Consumer quaryConsumerInfo(@Param("consumerId") long consumerId);
	void insertConsumerInfo(@Param("telNum") String telNum);
	//first time
	void changeConsumerPassword(@Param("consumerId") long consumerId);
	
}
