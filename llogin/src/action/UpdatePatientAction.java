package action;
import service.Emservice;
import model.Emmodel;

import java.util.*;

import com.opensymphony.xwork2.ActionSupport;

public class UpdatePatientAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	private Emservice es=new Emservice();

	private Emmodel em;

	
	public Emmodel getEm() {
		return em;
	}
	public void setEm(Emmodel em) {
		this.em = em;
	}
	
	//ÐÞ¸Ä²¡ÈË
	public String update(){
		es.update(em);
		return SUCCESS;
	}
	
	
	

}
