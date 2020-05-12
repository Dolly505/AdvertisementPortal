package com.dao;

import java.util.ArrayList;

import org.hibernate.criterion.Restrictions;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.modal.AdminUser;
import com.modal.Feedback;
import com.modal.RoleType;
import com.modal.AdvType;
import com.modal.Category;
import com.modal.Location;
import com.modal.Query;
import com.modal.Publisher;
import com.util.HibernateConnection;

public class Dao {
	  /*HibernateConnection connection=new HibernateConnection();*/
	  SessionFactory factory=null;
	  Configuration configuration=new Configuration();
	  Session session=null;
	  Transaction transaction=null;
	  public Dao(){
		  configuration.configure("hibernate.cfg.xml");
		  factory=configuration.buildSessionFactory();
	  }
	public int saveRoleType(RoleType roleType) {
		// TODO Auto-generated method stub
		
		int success=0;
		session=factory.openSession();
		transaction=session.beginTransaction();
		success=(int) session.save(roleType);
		transaction.commit();
		session.close();
	 return success;
	}
	public ArrayList<RoleType>selectAllRow(){
		session=factory.openSession();
		transaction=session.beginTransaction();
		 Criteria criteria=session.createCriteria(RoleType.class);
		 ArrayList<RoleType>arrayList=(ArrayList<RoleType>) criteria.list();
		return arrayList;
		
    }
	public void deleteData(int id) {
		session=factory.openSession();
		transaction=session.beginTransaction();
	    RoleType roleType=(RoleType)session.get(RoleType.class,id);
	    session.delete(roleType); 
	    transaction.commit();
	    
	}
	public  RoleType getUniqueRoleRow(int i) {
		// TODO Auto-generated method stub
		session=factory.openSession();
		transaction=session.beginTransaction();
		RoleType roleType=(RoleType)session.get(RoleType.class,i);
	     return roleType;
	}
	public void updateRole(int roleId,String type,String roleActiveFlag) {
		// TODO Auto-generated method stub
		session=factory.openSession();
		transaction=session.beginTransaction();
		RoleType roleType=(RoleType)session.get(RoleType.class,roleId);
	    roleType.setRoleType(type);
	    roleType.setRoleActiveFlag(roleActiveFlag);
	    session.update(roleType);
	    transaction.commit();
	    session.close();
		
		}
	//Advertisement
	public int saveAdvType(AdvType advType) {
		// TODO Auto-generated method stub
		
		int success=0;
		session=factory.openSession();
		transaction=session.beginTransaction();
		success=(int) session.save(advType);
		transaction.commit();
		session.close();
	 return success;
	}
	public ArrayList<AdvType>selectAllAdvRow(){
		session=factory.openSession();
		transaction=session.beginTransaction();
		 Criteria criteria=session.createCriteria(AdvType.class);
		 ArrayList<AdvType>arrayList=(ArrayList<AdvType>) criteria.list();
		return arrayList;
		
    }
	public void deleteAdvData(int id) {
		session=factory.openSession();
		transaction=session.beginTransaction();
	    AdvType advType=(AdvType)session.get(AdvType.class,id);
	    session.delete(advType); 
	    transaction.commit();
	    
	}
	public  AdvType getUniqueAdvRow(int i) {
		// TODO Auto-generated method stub
		session=factory.openSession();
		transaction=session.beginTransaction();
		AdvType advType=(AdvType)session.get(AdvType.class,i);
	     return advType;
	}
	public void updateAdv(int advId,String type,String advActiveFlag) {
		// TODO Auto-generated method stub
		session=factory.openSession();
		transaction=session.beginTransaction();
		AdvType advType=(AdvType)session.get(AdvType.class,advId);
	    advType.setAdvType(type);
	    advType.setAdvActiveFlag(advActiveFlag);
	    session.update(advType);
	    transaction.commit();
	    session.close();
		
		}

	//User
	public int saveUser(AdminUser user) {
		Session session=null;
		Transaction transaction=null;
		int success=0;
		try {
			
			session=factory.openSession();
			transaction=session.beginTransaction();
			
			success=(int) session.save(user);
			transaction.commit();
			session.close();
			} catch (Exception e) {
			// TODO: handle exception
		    
			transaction.rollback();
			}
		return success;
	}
	public ArrayList<AdminUser>selectAllAdminUserRow(){
		session=factory.openSession();
		transaction=session.beginTransaction();
		 Criteria criteria=session.createCriteria(AdminUser.class);
		 ArrayList<AdminUser>arrayList=(ArrayList<AdminUser>) criteria.list();
		return arrayList;
		
    }
	public void deleteAdminUserData(int id) {
		session=factory.openSession();
		transaction=session.beginTransaction();
	    AdminUser adminUser=(AdminUser)session.get(AdminUser.class,id);
	    session.delete(adminUser); 
	    transaction.commit();
	    
	}
	//Category
	public int saveCategoryData(Category category) {
		// TODO Auto-generated method stub
		int temp=0;
		session=factory.openSession();
		transaction=session.beginTransaction();
        temp=(int)session.save(category);
        transaction.commit(); 
	    return temp;
	}

	public ArrayList<Category> fetchSingleColumn() {
		// TODO Auto-generated method stub
		session=factory.openSession();
		Criteria criteria=session.createCriteria(Category.class);
		ArrayList<Category>arrayList=(ArrayList<Category>) criteria.list();
		return arrayList;
	}

	public Category getSingleRow(int categoryID) {
		// TODO Auto-generated method stub
		session=factory.openSession();
		Category category=(Category) session.get(Category.class,categoryID);
		return category;
	}

	public int saveLocationData(Location location) {
		// TODO Auto-generated method stub
		int temp=0;
		session=factory.openSession();
		transaction=session.beginTransaction();
        temp=(int)session.save(location);
        transaction.commit(); 
	    return temp;
	}
			
	public ArrayList<Location> loadLocationTable() {
		// TODO Auto-generated method stub
		session=factory.openSession();
		Criteria criteria=session.createCriteria(Location.class);
		ArrayList<Location>arrayList=(ArrayList<Location>) criteria.list();
		return arrayList;
	}
	
	//login
	public ArrayList<AdminUser> login(String loginID, String password) {
		// TODO Auto-generated method stub
		session=factory.openSession();
		Criteria criteria=session.createCriteria(AdminUser.class).add(Restrictions.eq("adminUserEmail",loginID)).add(Restrictions.eq("adminUserPassword",password));
		ArrayList<AdminUser>list=(ArrayList<AdminUser>) criteria.list();
		return list;
	}
	
	public int saveFeedback(Feedback feedback) {
		Session session=null;
		Transaction transaction=null;
		int success=0;
		try {
			
			session=factory.openSession();
			transaction=session.beginTransaction();
			
			success=(int) session.save(feedback);
			transaction.commit();
			session.close();
			} catch (Exception e) {
			// TODO: handle exception
		    
			transaction.rollback();
			}
		return success;
	}
	
	    
	public ArrayList<Feedback>selectAllFeedbackRow(){
		session=factory.openSession();
		transaction=session.beginTransaction();
		 Criteria criteria=session.createCriteria(Feedback.class);
		 ArrayList<Feedback>arrayList=(ArrayList<Feedback>) criteria.list();
		return arrayList;
		
    }
	public void deleteFeedbackData(int id) {
		session=factory.openSession();
		transaction=session.beginTransaction();
	    Feedback feedback=(Feedback)session.get(Feedback.class,id);
	    session.delete(feedback); 
	    transaction.commit();
	}
	
	public int saveQuery(Query query) {
		Session session=null;
		Transaction transaction=null;
		int success=0;
		try {
			
			session=factory.openSession();
			transaction=session.beginTransaction();
			
			success=(int) session.save(query);
			transaction.commit();
			session.close();
			} catch (Exception e) {
			// TODO: handle exception
		    
			transaction.rollback();
			}
		return success;
	}
	public void deleteQueryData(int id) {
		session=factory.openSession();
		transaction=session.beginTransaction();
	    Query query=(Query)session.get(Query.class,id);
	    session.delete(query); 
	    transaction.commit();
	}
	public ArrayList<Query>selectAllQueryRow(){
		session=factory.openSession();
		transaction=session.beginTransaction();
		 Criteria criteria=session.createCriteria(Query.class);
		 ArrayList<Query>arrayList=(ArrayList<Query>) criteria.list();
		return arrayList;
		
    }
	public int savePublisher(Publisher publisher) {
		Session session=null;
		Transaction transaction=null;
		int success=0;
		try {
			
			session=factory.openSession();
			transaction=session.beginTransaction();
			
			success=(int) session.save(publisher);
			transaction.commit();
			session.close();
			} catch (Exception e) {
			// TODO: handle exception
		    e.printStackTrace();
			transaction.rollback();
			}
		return success;
	}
	public ArrayList<Publisher>selectAllPublisherRow(){
		session=factory.openSession();
		transaction=session.beginTransaction();
		 Criteria criteria=session.createCriteria(Publisher.class);
		 ArrayList<Publisher>arrayList=(ArrayList<Publisher>) criteria.list();
		return arrayList;
		
    }
	public void deletePublisherData(int id) {
		session=factory.openSession();
		transaction=session.beginTransaction();
	    Publisher publisher=(Publisher)session.get(Publisher.class,id);
	    session.delete(publisher); 
	    transaction.commit();
	}
	
	
	
	
	
	
	
}
