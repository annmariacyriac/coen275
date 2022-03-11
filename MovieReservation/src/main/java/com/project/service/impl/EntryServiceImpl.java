package com.project.service.impl;

import com.project.dao.impl.EntryDaoImpl;
import com.project.model.User;
import com.project.service.EntryService;

public class EntryServiceImpl implements EntryService {

	public User userLogin(String email, String password) {

		EntryDaoImpl entryDao = new EntryDaoImpl();
		return entryDao.userLogin(email);
	
	}

	public int userSignUp(User user) {
		
		EntryDaoImpl entryDao = new EntryDaoImpl();		
		return entryDao.userSignUp(user);
	}
}
