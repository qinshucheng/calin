package dao;
import java.util.*;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import model.*;
import util.*;

public class EmDAO {
	
	//��ѯ����
	public ArrayList<Emmodel> querypatient(){
		Session session=Hibernateutil.opensession();
		String hql="from Emmodel";
		Query query=session.createQuery(hql);
		ArrayList<Emmodel> list=(ArrayList<Emmodel>) query.list();
		Hibernateutil.closesession(session);
		return list;
	}
	//���˵�½
		public int patientlogin(Emmodel em){
			Session session=Hibernateutil.opensession();
			String hql="select count(*) from Emmodel where empname='"+em.getEmpname()+"' and empwd='"+em.getEmpwd()+"'";
			Query query=session.createQuery(hql);
			List list=query.list();
			int count=Integer.parseInt(list.get(0).toString());
			Hibernateutil.closesession(session);
			return count;
		}
	
	//����ע��
	public void add(Emmodel em){
		Session session=Hibernateutil.opensession();
		Transaction tran=session.beginTransaction();
		session.save(em);
		tran.commit();
		Hibernateutil.closesession(session);	
	} 
	
	//ɾ��
	public void deletepatient(int id){
		Session session=Hibernateutil.opensession();
		Transaction tran=session.beginTransaction();
		Emmodel em=(Emmodel) session.load(Emmodel.class, new Integer(id));
		session.delete(em);
		tran.commit();
		Hibernateutil.closesession(session);
	}
	
	//����ID��ѯ(�����޸�)
	public Emmodel byid(int id){
		Session session=Hibernateutil.opensession();
		Emmodel em=(Emmodel) session.get(Emmodel.class, new Integer(id));
		return em;
	}
	
	//�޸�
	public void update(Emmodel em){
		Session session=Hibernateutil.opensession();
		Transaction tran=session.beginTransaction();
		session.update(em);
		tran.commit();
		Hibernateutil.closesession(session);	
	} 
	

}
