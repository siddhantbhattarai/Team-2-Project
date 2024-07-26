package com.ismt.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ismt.models.News;

public interface NewsRepo extends JpaRepository<News, Integer>{

}
