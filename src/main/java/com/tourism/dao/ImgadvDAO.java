package com.tourism.dao;


import java.util.HashMap;
import java.util.List;

import com.tourism.entity.Imgadv;

public interface ImgadvDAO {
	List<Imgadv> selectAll(HashMap map);
	void add(Imgadv imgadv);
	void update(Imgadv imgadv);
	void delete(int id);
    Imgadv findById(int id);
}
