package service;
import dao.UserDAO;
import model.Usermodel;

public class Userservice {
	
	private UserDAO ud=new UserDAO();
	
	public boolean doctorlogin(Usermodel um){
		return ud.doctorlogin(um)>0?true:false;
	}
	
	public void doctorregister(Usermodel um){
		ud.doctorregister(um);
	}
	

}
