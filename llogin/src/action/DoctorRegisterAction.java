package action;
import service.Userservice;
import model.Usermodel;

import java.util.*;

import com.opensymphony.xwork2.ActionSupport;

public class DoctorRegisterAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	

	private Userservice us=new Userservice();
	private Usermodel um;
	
	public Usermodel getUm() {
		return um;
	}
	public void setUm(Usermodel um) {
		this.um = um;
	}
	

	//ע�ᣨҽ������
	public String doctoregister(){
		us.doctorregister(um);
		return SUCCESS;
	}
	
	

}
