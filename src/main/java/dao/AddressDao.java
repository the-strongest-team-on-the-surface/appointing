package dao;

import entiy.Address;
import org.apache.ibatis.annotations.Param;

public interface AddressDao {

	Address quaryAddressInfo(@Param("id") int id);
	
}
