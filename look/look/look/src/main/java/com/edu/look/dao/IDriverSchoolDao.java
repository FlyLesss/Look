package com.edu.look.dao;

import java.util.List;

import com.edu.look.pojo.DriverSchool;

public interface IDriverSchoolDao {

	public List<DriverSchool> getAlldriverschool();
	public List<DriverSchool> getOnedriverschool(String did);
	
	public List<DriverSchool> getDriverschool();
}
