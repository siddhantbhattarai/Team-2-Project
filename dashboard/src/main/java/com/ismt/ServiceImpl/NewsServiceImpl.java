package com.ismt.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ismt.Repository.NewsRepo;
import com.ismt.Service.NewsService;
import com.ismt.models.News;

@Service
public class NewsServiceImpl implements NewsService{
	
	@Autowired
	private NewsRepo repo;

	@Override
	public void addnews(News news) {
		repo.save(news);
		
	}

	@Override
	public List<News> getallNews() {
		
		return repo.findAll();
	}

	@Override
	public void deleteNews(int id) {
		repo.deleteById(id);
		
	}




}
