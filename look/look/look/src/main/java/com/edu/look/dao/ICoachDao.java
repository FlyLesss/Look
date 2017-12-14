package com.edu.look.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.edu.look.pojo.Coach;

public interface ICoachDao {

	public List<Coach> getAllCoach();
	public List<Coach> getNameCoach(@Param("cid")String cid);
	
	public List<Coach> getByDriverSchoolCoach(@Param("did")String did);
	
	public List<Coach> getCoach();
	public List<Coach> getascCoach();
	
}
