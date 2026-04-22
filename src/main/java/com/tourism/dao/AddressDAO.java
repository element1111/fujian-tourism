package com.tourism.dao;



import java.util.HashMap;
import java.util.List;

import com.tourism.entity.Address;

public interface AddressDAO {
	List<Address> selectAll(HashMap map);
	void add(Address address);
	void delete(int id);
	void update(Address address);
    Address findById(int id);
}
