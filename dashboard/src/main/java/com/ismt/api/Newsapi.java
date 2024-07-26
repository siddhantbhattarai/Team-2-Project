package com.ismt.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ismt.Service.NewsService;
import com.ismt.models.News;


@RestController
@RequestMapping("/api/news")
public class Newsapi {
	@Autowired
	private NewsService service;

	@GetMapping("/getnews")
	public List<News> getallNews() {
		return service.getallNews();
	}
}
