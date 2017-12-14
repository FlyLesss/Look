package com.edu.look.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.edu.look.pojo.Coach;
import com.edu.look.pojo.Evaluate;
import com.edu.look.service.ICoachService;
import com.edu.look.service.IEvaluateService;
import com.edu.look.util.MailUtil;



@Controller
@RequestMapping("/coach")
public class CoachController {

	@Autowired
	ICoachService coachservice;
	
	@Autowired
	IEvaluateService evaluateservice;
	
	@RequestMapping(value="/allcoach.htm",method=RequestMethod.GET)
	public String AllCoach(HttpServletRequest req){
		List<Coach> coach;
		coach = coachservice.getAllCoach();
		req.setAttribute("coach", coach);
		
		return "teacherShow";
		
	}
	
	@RequestMapping(value="/getnamecoach.htm",method=RequestMethod.GET)
	public String getNameCoach(HttpServletRequest req,String cid){
		List<Coach> coachone;
		List<Evaluate> evaluate;
		
		coachone = coachservice.getNameCoach(cid);
		evaluate = evaluateservice.getAllcontent(cid);
		req.setAttribute("coach", coachone);
		req.setAttribute("evaluate", evaluate);
		return "teacherIntrodu";
		
	}
	@RequestMapping(value="/getonecoach.htm",method=RequestMethod.POST)
	public String getOneCoach(String cid,HttpServletRequest req){
		req.getAttribute(cid);
		return getNameCoach(req, cid);
	}
	
	@RequestMapping(value="/email.htm",method=RequestMethod.GET)
	public String email(String cphone){
		//boolean falg = false;
		
		MailUtil.sendEmail(cphone, "邮件已经发送成功，用的我的163邮箱发送的；评论需要登陆！！！", "邮箱发送成功");
		return "forward:/coach/allcoach.htm";
	}
	
}
