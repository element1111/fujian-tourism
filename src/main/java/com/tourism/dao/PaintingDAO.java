package com.tourism.dao;

import java.util.HashMap;
import java.util.List;

import com.tourism.entity.Painting;

public interface PaintingDAO {
	List<Painting> selectAll(HashMap map);
	void add(Painting painting);
	void update(Painting painting);
	void delete(int id);
	Painting findById(int id);
}
