package com.klef.ep.services;

import java.util.List;

import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.klef.ep.models.Admin;
import com.klef.ep.models.Deposit;
import com.klef.ep.models.Employee;
import com.klef.ep.models.Faculty;
import com.klef.ep.models.Student;
import com.klef.ep.models.Transfer;

@Stateless
@TransactionManagement(TransactionManagementType.BEAN)
public class AdminServiceImpl implements AdminService
{

	@Override
	public Admin CheckAdminLogin(String username, String password) 
	{
		 EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
      	 EntityManager em = emf.createEntityManager();
      	  
         em.getTransaction().begin();
         
         Query qry = em.createQuery("  select a from Admin a where username=? and password=?   "); // atmost one object (0 or 1)
	     qry.setParameter(1, username);
	     qry.setParameter(2, password);
	     
	     Admin admin = null;
	     
	     if(qry.getResultList().size() > 0) 
	     {
	    	    admin = (Admin) qry.getSingleResult();
	     }
	     
	     em.close();
	     emf.close();
	   
	     return admin;

	}
	
	@Override
	public String deleteEmployee(int eid) 
	{
		  EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
	   	  EntityManager em = emf.createEntityManager();
	   	  
	   	  em.getTransaction().begin();
		  Employee e = em.find(Employee.class, eid); // fetching object based on ID
	   	  em.remove(e);
	   	  em.getTransaction().commit();
	   	  
	   	  em.close();
		  emf.close();
		  
		  return "Record Deleted Successfully";
	}
	
	public List<Employee> viewAllEmployees() 
	{
		 EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
      	 EntityManager em = emf.createEntityManager();
      	  
         em.getTransaction().begin();
         
         Query qry = em.createQuery("   select e from Employee e "); // e is an alias of Employee class
         List<Employee> emplist = qry.getResultList();
      
         em.close();
   	    emf.close();
   	    
   	    return emplist;
	}


	@Override
	public String AddStudent(Student student) 
	{
		return null;
	}

	@Override
	public String AddFaculty(Faculty faculty) 
	{
		return null;
	}

	@Override
	public List<Student> ViewAllStudents() 
	{
		return null;
	}

	@Override
	public List<Faculty> ViewAllFaculty() 
	{
		return null;
	}
	@Override
	public String deleteDeposit(int eid) {
		  EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
	   	  EntityManager em = emf.createEntityManager();
	   	  
	   	  em.getTransaction().begin();
		  Deposit d = em.find(Deposit.class, eid); // fetching object based on ID
	   	  em.remove(d);
	   	  em.getTransaction().commit();
	   	  
	   	  em.close();
		  emf.close();
		  
		  return "Record Deleted Successfully";
	}
	@Override
	public List<Deposit> viewAllDep() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
     	 EntityManager em = emf.createEntityManager();
     	  
        em.getTransaction().begin();
        
        Query qry = em.createQuery("   select d from Deposit d "); // e is an alias of Employee class
        List<Deposit> emplist = qry.getResultList();
     
        em.close();
  	    emf.close();
  	    
  	    return emplist;
	}
	@Override
	public String deleteTransfer(int eid) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
	   	  EntityManager em = emf.createEntityManager();
	   	  
	   	  em.getTransaction().begin();
		  Transfer t = em.find(Transfer.class, eid); // fetching object based on ID
	   	  em.remove(t);
	   	  em.getTransaction().commit();
	   	  
	   	  em.close();
		  emf.close();
		  
		  return "Record Deleted Successfully";
	}

	@Override
	public List<Transfer> viewAllTran() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
    	 EntityManager em = emf.createEntityManager();
    	  
       em.getTransaction().begin();
       
       Query qry = em.createQuery("   select t from Transfer t "); // e is an alias of Employee class
       List<Transfer> emplist = qry.getResultList();
    
       em.close();
 	    emf.close();
 	    
 	    return emplist;
	}



	
}
