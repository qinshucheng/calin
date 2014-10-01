package action;
import service.Emservice;
import model.Emmodel;

import java.util.*;

import com.opensymphony.xwork2.ActionSupport;

public class QueryPatientAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private Emservice es=new Emservice();

	private ArrayList<Emmodel> list;
	
	public ArrayList<Emmodel> getList() {
		return list;
	}
	public void setList(ArrayList<Emmodel> list) {
		this.list = list;
	} 
	
	//查询所有病人信息
	public String querypatient(){
		list=es.querypatient();
		return SUCCESS;
	}
	


}
