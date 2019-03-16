package dao;

import entiy.Baber;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BaberDao {

	String quaryBaberPassword(@Param("telNum") String telNum);
	Baber quaryBaBerInfo(@Param("baberId") int baberId);
	int insertBaberInfo(@Param("baberId") int baberId);
	int changeBaberInfo(@Param("baberId") int baberId);
	List<Baber> quaryStoreBaber(@Param("storeId") int storeId);
	
}
