package com.edu.look.service;

import java.util.List;

import com.edu.look.pojo.Coach;


public interface ICoachService {

	public List<Coach> getAllCoach();
	public List<Coach> getNameCoach(String cid);
	public List<Coach> getByDriverSchoolCoach(String did);
	
	public List<Coach> getCoach();
	public List<Coach> getascCoach();
}
