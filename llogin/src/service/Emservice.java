package service;
import dao.EmDAO;
import model.Emmodel;

import java.util.*;

public class Emservice {
	
	private EmDAO ed=new EmDAO();
	
	
	
	public ArrayList<Emmodel> querypatient(){
		return ed.querypatient();
	}
	
	public void add(Emmodel em){
		ed.add(em);
	}
	
	public void deletepatient(int id){
		ed.deletepatient(id);
	}
	
	public Emmodel byid(int id){
		return ed.byid(id);
	}
	
	public void update(Emmodel em){
		ed.update(em);
	}

	public boolean patientlogin(Emmodel em){
		return ed.patientlogin(em)>0?true:false;
	}
	
}
