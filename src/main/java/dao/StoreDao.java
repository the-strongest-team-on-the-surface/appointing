package dao;

import entiy.Store;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface StoreDao {

	String quaryStorePassword(String telNum);
	Store quaryStoreInfo(int storeId);
	int insertStoreInfo(@Param("storeId")int storeId, @Param("name")String name, @Param("code")String code, @Param("telNum")String telNum, @Param("password")String password, @Param("detailedAddress")String detailedAddress);
	int changeStoreInfo(@Param("storeId")int storeId, @Param("name")String name, @Param("code")String code, @Param("telNum")String telNum, @Param("password")String password, @Param("detailedAddress")String detailedAddress);
	List<Store> quaryAllStore(String code);
	
}
