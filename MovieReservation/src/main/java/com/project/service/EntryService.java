package com.project.service;

import com.project.model.User;

public interface EntryService {

	public User userLogin(String email, String password) ;

	public int userSignUp(User user);
}
