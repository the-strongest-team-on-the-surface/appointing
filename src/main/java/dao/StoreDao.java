package dao;

import entiy.Store;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface StoreDao {

	Store quaryStorePassword(@Param("telNum") String telNum, @Param("password") String password);
	Store quaryStoreInfo(@Param("storeId") long storeId);
	int insertStoreInfo(@Param("storeId") long storeId);
	int changeStoreInfo(@Param("storeId") long storeId);
	List<Store> quaryStoreStore(@Param("addressId") long addressId);
	
}
