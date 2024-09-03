package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Blogger;
import com.klef.jfsd.springboot.model.Counter; 
 
public interface AdminService 
{
	public List<Blogger> viewallusers();
	public Blogger viewuserbyid(int uid);
	public String deleteuser(int uid);
	public Admin checkadminlogin(String uname,String pwd);
	public long userscount(); //count(*) 
	public void increase(String username);
	public int updatestatus(int uid,boolean status);
	public List<Counter> viewallcounter();
}
