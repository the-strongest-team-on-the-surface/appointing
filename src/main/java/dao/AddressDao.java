package dao;

import entiy.Address;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface AddressDao {
	
	List<Address> quaryNextLevel(String code);
	String quaryName(String code);
	
}
