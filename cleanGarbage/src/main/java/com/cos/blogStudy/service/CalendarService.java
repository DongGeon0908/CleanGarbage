package com.cos.blogStudy.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cos.blogStudy.repository.CalendarRepository;
import com.cos.blogStudy.repository.NoticeRepository;

@Service
public class CalendarService {

	@Autowired
	private CalendarRepository calendarRepository;

}
