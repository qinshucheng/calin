package action;
import service.Userservice;

import model.Usermodel;

import java.util.*;
import com.opensymphony.xwork2.ActionSupport;

public class DoctorLoginAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	private Userservice us=new Userservice();

	private Usermodel um;
	private String result;
	
	public Usermodel getUm() {
		return um;
	}
	public void setUm(Usermodel um) {
		this.um = um;
	}
	
	
	
	
	//Ò½ÉúµÇÂ½
	public String doctorlogin(){
		if(us.doctorlogin(um)){
			return SUCCESS;
		}
		else{
			return "error";
		}
	
	}
	

}
