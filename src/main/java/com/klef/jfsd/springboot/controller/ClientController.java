package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Blogger;
import com.klef.jfsd.springboot.model.Contact;
import com.klef.jfsd.springboot.repository.ContactRepository;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.BloggerService;
//import com.klef.jfsd.springboot.service.EmailService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller

public class ClientController 
{
	@Autowired
	 private BloggerService bloggerService;
	
	@Autowired
	 private AdminService adminService;
	
	@Autowired
	ContactRepository contactRepository;
//	@Autowired
//	 private EmailService emailService;
	
	
	@GetMapping("/")
	public String auto1()
	{
		return "auto";
	}
	
	@GetMapping("/adminaboutus")
	public String adminaboutus()
	{
		return "adminaboutus";
	}
	
	@GetMapping("/admincontactus")
	public String admincontactus()
	{
		return "admincontactus";
	}
	

	
	@GetMapping("/service")
	public String service()
	{
		return "service";
	}
	
	@GetMapping("/cards")
	public String cards()
	{
		return "cards";
	}
	
	
	@GetMapping("/auto")
	public String auto()
	{
		return "auto";
	}
	
	@GetMapping("/useraboutus")
	public String useraboutus()
	{
		return "useraboutus";
	}
	@GetMapping("/userauto")
	public String userauto()
	{
		return "userauto";
	}
	
	
	
	
	@GetMapping("/userservice")
	public String userservice()
	{
		return "userservice";
	}
	
	@GetMapping("/usercards")
	public String usercards()
	{
		return "usercards";
	}
	
	@GetMapping("/adminauto")
	public String adminauto()
	{
		return "adminauto";
	}
	
	@GetMapping("/username")
	public String username()
	{
		return "username";
	}
	
	
	
	@GetMapping("/home")
	public ModelAndView home()
	{
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("home");
	    return mv;
	}
	@GetMapping("/aboutus")
	public ModelAndView aboutus()
	{
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("aboutus");
	    return mv;
	}


	
	@PostMapping ("insertuser")
	public ModelAndView insertaction(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		String msg=null;
		
		try 
		{
			String name = request.getParameter("username");
			String email = request.getParameter("email");
			String pwd = request.getParameter("password");
			
			Blogger user = new Blogger();
		       user.setUsername(name);
		       user.setEmail(email);
		       user.setPassword(pwd);
		      msg = bloggerService.userregister(user);    
//		      emailService.sendEmail(user.getEmail(),"E - Survey","Thank You for registering ,If any queries you can write a reply mail.");    
		      mv.setViewName("login");
		      mv.addObject("message","Registered Successfully");
		}
		catch (Exception e) 
		{
			mv.setViewName("displayerror");
			
			msg=e.getMessage();
			
			mv.addObject("message",msg);
		}
		return mv;
	}
	@GetMapping("/register")
	public ModelAndView register()
	{
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("register");
	    return mv;
	}

	@GetMapping("/login")
	public ModelAndView login()
	{
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("login");
	    return mv;
	}
	
	@PostMapping("checkuserlogin")
	public ModelAndView checkuserlogin(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		String username=request.getParameter("username");
		String pwd=request.getParameter("password");
		
		
		
		Blogger user=bloggerService.checkuserlogin(username, pwd);
		
		if(user!=null)
		{
			//session start
			HttpSession session=request.getSession();
			adminService.increase(username);
			session.setAttribute("uid", user.getId()); //eid is  a session variable
			session.setAttribute("uname", user.getUsername()); //ename is a sesssion variable
			
			//session end
			mv.addObject("name", username);
			mv.setViewName("username");
		}
		else
		{
			mv.setViewName("login");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}
	

	@GetMapping("adminlogin") 
	public ModelAndView adminlogin()
	{
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("adminlogin");
	     return mv;
	}
	


	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
		String uname= request.getParameter("username");
		String pwd=request.getParameter("password");
		
		Admin a = adminService.checkadminlogin(uname, pwd);
		
		ModelAndView mv =new ModelAndView();
		if(a!=null)
		{
			mv.addObject("clist", adminService.viewallcounter());
			mv.setViewName("adminhome");  
			
		}
		else
		{
			mv.setViewName("adminlogin");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}
	
	@GetMapping("adminhome")
	   public ModelAndView adminhome()
	   {
		long userscount=adminService.userscount(); 
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("adminhome");
	     mv.addObject("ucount",userscount); 
	     return mv;
	   }
	
	@GetMapping("viewallusers")
	public ModelAndView viewallusers()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewallusers");
		
		List<Blogger> userlist =adminService.viewallusers();
		mv.addObject("userdata", userlist);
		return mv;
	}
	


	
	  @GetMapping("userlogout")
	   public ModelAndView userlogout()
	   {
		   ModelAndView mv= new ModelAndView();
		   mv.setViewName("userlogin");
		   mv.addObject("message","Logout Succesfully");
		   return mv;
	   }



	
	@GetMapping("contactus")
	public ModelAndView contactus()
	  {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("contactus");
	    return mv;
	  }
	@GetMapping("/usercontactus")
	public String usercontactus()
	{
		return "usercontactus";
	}
//	@GetMapping("/usercontactus")
//	public ModelAndView usercontactus(HttpServletRequest request)
//	  {
//		String name = request.getParameter("name");
//		String email = request.getParameter("email");
//		String phno = request.getParameter("phno");
//		String subject = request.getParameter("subject");
//		String message = request.getParameter("message");
//		
//		Contact ct = new Contact();
//		ct.setName(name);
//		ct.setEmail(email);
//		ct.setPhno(phno);
//		ct.setSubject(subject);
//		ct.setMessage(message);
//		System.out.println(ct);
//		contactRepository.save(ct);
//		ModelAndView ct1 = new ModelAndView();
//		ct1.setViewName("redirect:/usercontactus");
//		return ct1;
//	  }

	
	
	
	
	
	
	
	
	
}
