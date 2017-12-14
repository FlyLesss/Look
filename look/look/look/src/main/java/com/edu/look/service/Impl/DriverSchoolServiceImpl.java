package com.edu.look.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.edu.look.dao.IDriverSchoolDao;
import com.edu.look.pojo.DriverSchool;
import com.edu.look.service.IDriverSchoolService;

@Service
@Transactional
public class DriverSchoolServiceImpl implements IDriverSchoolService {

	@Autowired
	IDriverSchoolDao driverschooldao;
	
	@Override
	public List<DriverSchool> getAlldriverschool() {
		// TODO Auto-generated method stub
		return driverschooldao.getAlldriverschool();
	}

	@Override
	public List<DriverSchool> getOnedriverschool(String did) {
		// TODO Auto-generated method stub
		return driverschooldao.getOnedriverschool(did);
	}

	@Override
	public List<DriverSchool> getDriverschool() {
		// TODO Auto-generated method stub
		return driverschooldao.getDriverschool();
	}

}
