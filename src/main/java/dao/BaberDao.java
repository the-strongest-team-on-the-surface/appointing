package dao;

import entiy.Baber;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BaberDao {

	Baber quaryBaberPassword(@Param("telNum") String telNum, @Param("password") String password);
	Baber quaryBaBerInfo(@Param("baberId") long baberId);
	int insertBaberInfo(@Param("baberId") long baberId);
	int changeBaberInfo(@Param("baberId") long baberId);
	List<Baber> quaryStoreBaber(@Param("storeId") long storeId);
	
}
