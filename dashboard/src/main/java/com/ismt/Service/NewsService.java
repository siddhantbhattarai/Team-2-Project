package com.ismt.Service;

import java.util.List;

import com.ismt.models.News;

public interface NewsService {
	
	void addnews(News news);
	void deleteNews(int id);
	List<News> getallNews();
	

}
