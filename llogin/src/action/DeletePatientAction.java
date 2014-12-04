package action;
import service.Emservice;
import model.Emmodel;

import java.util.*;

import com.opensymphony.xwork2.ActionSupport;

public class DeletePatientAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private Emservice es=new Emservice();
	private Emmodel em;

	public Emmodel getEm() {
		return em;
	}
	public void setEm(Emmodel em) {
		this.em = em;
	}
	
	
	//É¾³ý²¡ÈË
	public String deletepatient(){
		es.deletepatient(em.getEmpno());
		return SUCCESS;
	}
	

}
