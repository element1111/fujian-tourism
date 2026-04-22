package com.tourism.dao;

import java.util.HashMap;
import java.util.List;

import com.tourism.entity.Articles;

public interface ArticlesDAO {
	List<Articles> selectAll(HashMap map);
	void add(Articles articles);
	void delete(int id);
	void update(Articles articles);
    Articles findById(int id);
}
