package dao;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import model.member;

public class DbConnection {
	public static void main(String[] args) {
		// 建立 EntityManagerFactory 物件
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("companyPersistence"); //名稱對應 <persistence-unit name="companyPersistence" >
		EntityManager em = emf.createEntityManager();
		System.out.println(em);
		member m = new member("persistence", "1234", "jj", "taipei", "0800", "99999" );
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.persist(m);
		et.commit();
	}
	
	public static EntityManager geDb() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("companyPersistence"); //名稱對應 <persistence-unit name="companyPersistence" >
		EntityManager em = emf.createEntityManager();
		return em;
	}
}	