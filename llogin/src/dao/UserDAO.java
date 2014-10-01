package dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import model.Usermodel;
import util.Hibernateutil;
import java.util.*;

public class UserDAO {
	
	//医生登陆
	public int doctorlogin(Usermodel um){
		Session session=Hibernateutil.opensession();
		String hql="select count(*) from Usermodel where username='"+um.getUsername()+"' and userpwd='"+um.getUserpwd()+"'";
		Query query=session.createQuery(hql);
		List list=query.list();
		int count=Integer.parseInt(list.get(0).toString());
		Hibernateutil.closesession(session);
		return count;
	}
	
	//医生注册
	public void doctorregister(Usermodel um){
		Session session=Hibernateutil.opensession();
		Transaction tran=session.beginTransaction();
		session.save(um);
		tran.commit();
		Hibernateutil.closesession(session);
	} 
	

}
