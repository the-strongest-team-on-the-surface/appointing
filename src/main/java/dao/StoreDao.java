package dao;

import entiy.Store;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface StoreDao {

	Store quaryStorePassword(@Param("telNum") String telNum, @Param("password") String password);
	Store quaryStoreInfo(@Param("storeId") int storeId);
	int insertStoreInfo(@Param("storeId") int storeId);
	int changeStoreInfo(@Param("storeId") int storeId);
	List<Store> quaryStoreStore(@Param("addressId") int addressId);
	
}
