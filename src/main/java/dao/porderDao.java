package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import model.porder;

public class porderDao implements implPorder {
	public static void main(String[] args) {
		// Create
		/*
		porder p=new porder("A桌", 1, 1, 1, 1, 1, 1);
		new porderDao().addPorder(p);
		*/
		// Read
		List<porder> l = new porderDao().queryAll();		
		// 第一種方式
		/*
		for(porder p : l){
			System.out.println(p.getId() + "\t" + p.getDesk() + "\t" + p.getSum());
		}
		*/
		// 第二種方式 - Java8
		l.stream().forEach(s -> System.out.printf("%d %s %s", s.getId(), s.getDesk(), s.getSum()));
		
	}
	// Create
	@Override
	public void addPorder(Object p) {
		EntityManager em=DbConnection.geDb();
		EntityTransaction et=em.getTransaction();
		et.begin();
		em.persist(p);
		et.commit();		
	}
	// Read
	@Override
	public List<porder> queryAll() {
		EntityManager em = DbConnection.geDb();
		String jpql = "select p from porder p";
		Query q = em.createQuery(jpql);
		List<porder> l = q.getResultList();			
		return l;
	}

	@Override
	public List<porder> querySum(int Start, int end) {
		EntityManager em = DbConnection.geDb();
		String jpql = "select p from porder p where p.sum>=?1 and p.sum<=?2";
		Query q = em.createQuery(jpql);
		q.setParameter(1, Start);
		q.setParameter(2, end);
		List<porder> l = q.getResultList();
		return l;
	}

	@Override
	public porder queryId(int id) {
		EntityManager em = DbConnection.geDb();
		porder p = em.find(porder.class, id);	
		return p;
	}
	// Update
	@Override
	public void update(porder p) {
		EntityManager em = DbConnection.geDb();
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.merge(p);
		et.commit();	
	}
	// Delete
	@Override
	public void delete(int id) {
		EntityManager em = DbConnection.geDb();
		porder p = em.find(porder.class, id);	
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.remove(p);
		et.commit();
	}
}
