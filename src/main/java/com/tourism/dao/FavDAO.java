package com.tourism.dao;

import java.util.HashMap;
import java.util.List;

import com.tourism.entity.Fav;

public interface FavDAO {
	List<Fav> selectAll(HashMap map);
	void add(Fav fav);
	void delete(int id);
	void deleteByMember(int id);
}
