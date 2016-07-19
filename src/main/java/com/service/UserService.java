package com.service;

import java.util.List;

import com.model.UserLogin;

public interface UserService {
	public List<UserLogin> getList();
	public void addUser(UserLogin p);
	public void updateUser(UserLogin p);
	public void deleteUser(String prodid);
	public UserLogin getUserbyId(String prodid);

}
