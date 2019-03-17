package dao;

import entiy.Address;

import java.util.List;

public interface AddressDao {
	
	List<Address> quaryNextLevel(String code);
	String quaryName(String code);
	
}
