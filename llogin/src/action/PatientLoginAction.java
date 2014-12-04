package action;
import service.Emservice;
import model.Emmodel;

import java.util.*;

import com.opensymphony.xwork2.ActionSupport;

public class PatientLoginAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	private Emservice es=new Emservice();

	private Emmodel em;

	
	public Emmodel getEm() {
		return em;
	}
	public void setEm(Emmodel em) {
		this.em = em;
	}


	//²¡ÈËµÇÂ½
		public String patientlogin(){
			if(es.patientlogin(em)){
				return SUCCESS;
			}
			else{
				return "error";
			}
		}

}
