package com.edu.look.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.util.FileUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.edu.look.pojo.Student;
import com.edu.look.service.IStudentService;
import com.edu.look.util.MailUtil;

@Controller
@RequestMapping("/student")
public class StudentController {
	
	@Autowired
	IStudentService studentservice;
	
	//student login
	@RequestMapping(value="/studentlogin.htm",method=RequestMethod.POST)
	public String studentlogin(String username,String password,HttpSession session){
		Student stu;
		if(studentservice.studentlogin(username, password)!=null){
			stu = studentservice.studentlogin(username, password);
			System.out.println("ture"+studentservice.studentlogin(username, password));
			session.setAttribute("stu", stu);
			return "forward:/index.jsp";
		}else{
			System.out.println("false"+studentservice.studentlogin(username, password));
			return "forward:/login.jsp";
		}
		
	}
	
	//student register
	@RequestMapping(value="/register.htm",method=RequestMethod.POST)
	public String studentregister(String sname,String spassword,String email,String sex,HttpServletRequest req){
		if(studentservice.studentregister(sname, spassword, email, sex)){
			MailUtil.sendEmail(email, "注册成功，现在可以登陆学习了！！！", "注册成功");
			return "forward:/login.jsp";
			
		}
		
		return "forward:/register.jsp";
	}
	
	//personal center <-- head
	@RequestMapping(value="/getoneperson.htm",method=RequestMethod.GET)
	public String getontperson(String sid,HttpServletRequest req){
		List<Student> student = new ArrayList<Student>();
		student = studentservice.getontperson(sid);
		req.setAttribute("student", student);
		return "personal";	
	}
	
	//personal center
		@RequestMapping(value="/getonestudent.htm",method=RequestMethod.GET)
		public String getontstudent(String sid,HttpServletRequest req){
			List<Student> student = new ArrayList<Student>();
			student = studentservice.getontperson(sid);
			req.setAttribute("student", student);
			return "updateperson";	
		}
	
	//personal center
	@RequestMapping(value="/exit.htm",method=RequestMethod.GET)
	public String exit(HttpSession session){
		session.invalidate();
		return "forward:/login.jsp";	
	}

	
	
	//update person
	@RequestMapping(value="/update.htm",method=RequestMethod.POST)
	public String update(String photo,String sid,String sname,String sage,String saddress,String shome,String sphone,String semail,String slon,String slat,String s1,MultipartFile file,HttpServletRequest request){
		
        String path = request.getSession().getServletContext().getRealPath("/photo");  
        String sphoto = file.getOriginalFilename();  
        if(sphoto==""){
        	sphoto = photo;
        }else{
        	sphoto = "../photo/" + sphoto;
	        System.out.println("fileName>>"+sphoto); 
	        File dir = new File(path, sphoto);  
	        System.out.println("dir.exists()>>"+dir.exists());  
	        if(!dir.exists()){  
	            dir.mkdirs();  
	        }  
	        System.out.println("dir.exists()>>"+dir.exists());  
	//      MultipartFile自带的解析方法  
	        try {
				file.transferTo(dir);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}  
        }
      
		studentservice.update(sid, sname, sage, saddress, shome, sphone, semail, slon, slat,s1,sphoto);
		return getontstudent(sid,request);	
	}
}
