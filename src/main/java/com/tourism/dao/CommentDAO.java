package com.tourism.dao;




import java.util.HashMap;
import java.util.List;

import com.tourism.entity.Comment;

public interface CommentDAO {
	List<Comment> selectAll(HashMap map);
	void add(Comment comment);
	void delete(int id);
	void deleteByArticlesid(int id);
	void update(Comment comment);
    Comment findById(int id);
}
