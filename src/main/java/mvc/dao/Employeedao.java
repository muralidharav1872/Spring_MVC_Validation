package mvc.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.stereotype.Component;

import mvc.dto.Employee;
@Component
public class Employeedao {

		EntityManagerFactory emf=Persistence.createEntityManagerFactory("dev");
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		
	public void saveEmployee(Employee e)
	{
			et.begin();
			em.persist(e);
			et.commit();
		
	}
	public Employee login(String email)
	{
		List<Employee> list=em.createQuery("select x from Employee x where email=?1").setParameter(1, email).getResultList();
		if(list.isEmpty())
		{
			return null;
		}
		else
			return list.get(0);
	}
	public List<Employee> fetchAll()
	{
		return em.createQuery("select x from Employee x").getResultList();
	}
	
	public void delete(int id)
	{
		et.begin();
		em.remove(find(id));
		et.commit();
	}
	public Employee find(int id)
	{
		return em.find(Employee.class, id);
	}
	public void updateEMployee(Employee emp)
	{
		et.begin();
		em.merge(emp);
		et.commit();
	}
}

