package com.tourism.dao;


import java.util.HashMap;
import java.util.List;

import com.tourism.entity.Chat;

public interface ChatDAO {
	List<Chat> selectAll(HashMap map);
	void add(Chat chat);
	void delete(int id);
	void update(Chat chat);
    Chat findById(int id);
}
