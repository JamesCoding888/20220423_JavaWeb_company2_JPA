package dao;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import model.member;
public class implMember implements memberDao {
	public static void main(String[] args) {
		member m = new member("implmember", "1234", "james", "taipei", "888", "999");
		new implMember().addMember(m);
	}
	@Override
	public void addMember(Object o) {
		EntityManager em = DbConnection.geDb();
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.persist(o);
		et.commit();
		
	}
	

}
