package dao;
import java.util.List;       
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import model.member;
public class implMember implements memberDao {
	public static void main(String[] args) {				
		List<member> l=new implMember().queryMember("1234", "jj");		
		System.out.println(l.size());
		
		boolean b=new implMember().queryMember("1234");		
		System.out.println(b);	
				
	}
	// 新增
	@Override
	public void addMember(Object o) {
		EntityManager em = DbConnection.geDb();
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.persist(o);
		et.commit();
		
	}
	// 查詢
	@Override
	public member getMember(int id) {
		EntityManager em=DbConnection.geDb();
		member m=em.find(member.class, id);
		return m;
	}	
	@Override
	public List<member> queryMember(String username, String password) {
		EntityManager em = DbConnection.geDb();
		String jpql = "select e from member e where e.username=?1 and e.password=?2";
		Query query = em.createQuery(jpql);
		query.setParameter(1, username);
		query.setParameter(2, password);
		List<member> list = query.getResultList();
		return list;			
	}
	@Override
	public boolean queryMember(String username) {
		EntityManager em=DbConnection.geDb();
		String jpql="select e from member e where e.username=?1";
		Query query=em.createQuery(jpql);
		query.setParameter(1, username);		
		List<member> l=query.getResultList();		
		boolean x=false;		
		if(l.size()!=0) {
			x=true;
		}		
		return x;
	}
	// 修改
	@Override
	public void updateMember(member m) {
		EntityManager em = DbConnection.geDb();
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.merge(m);
		et.commit();
	
	}
	// 刪除
	@Override
	public void deleteMember(int id) {
		EntityManager em = DbConnection.geDb();
		member mDelete = em.find(member.class, id);
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.remove(mDelete);
		et.commit();	
	}
}

/*===============================================================================================
// 新增		
member mAdd = new member("implmember", "1234", "james", "taipei", "888", "999");
new implMember().addMember(mAdd);

// 查詢		
member mQuery = new implMember().getMember(16);
System.out.println("Acquire object of model.member: " + mQuery + "\n" + 
				   "Acquire column of name at Table: member: " + mQuery.getName());		
// 修改		
member mUpdate = new implMember().getMember(16);
mUpdate.setName("wonderful");
mUpdate.setPassword("888888");
mUpdate.setAddress("nice Taipei101");			
new implMember().updateMember(mUpdate);

// 刪除
new implMember().deleteMember(5);
*/

/*===============================================================================================
// JPQL 查詢1
String jpql = "select e from member e where e.name = '南京東路4段 130號 7樓'"; // select * from member
// JPQL 查詢2
String jpql="select e from member e where e.id>=5 and e.id<=7 order by e.id desc";
// JPQL 查詢3
String jpql="select e from member e where e.name=?1";
// JPQL 查詢4
String jpql="select e from member e where e.id>=?1 and e.id<=?2";
EntityManager em = DbConnection.geDb();		
Query query = em.createQuery(jpql);				
// JPQL 查詢3
query.setParameter(1, "南京東路4段 130號 7樓"); // e.name=?1
// JPQL 查詢4
query.setParameter(1, 13);
query.setParameter(2, 15);

List<member> list = query.getResultList();		
for(member m : list)
{
	System.out.println("Acquire object of model.member: " + m + "\n" 
			         + "Id: " + m.getId() + "\n" 
			         + "Name: " + m.getName());
}		
*/	
