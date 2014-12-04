package util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class Hibernateutil {
	
	private static SessionFactory sessionfc;
	private static Configuration config;
	
	static{
		config=new Configuration().configure();//Ó³ÉäÎÄ¼þ
		sessionfc=config.buildSessionFactory();
	}
	
	public static Session opensession(){
		return sessionfc.openSession();
	}
	
	public static Configuration getconfiguration(){
		return config;
	}
	
	public static void closesession(Session session){
		if(session!=null){
			session.close();
		}
	}
	
	
	

}
