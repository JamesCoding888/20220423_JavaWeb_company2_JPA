package dao;

import java.util.List;

import model.member;

public interface memberDao {
	//新增
	void addMember(Object o);
	
	//查詢
	member getMember(int id);
	List<member> queryMember(String username, String password);
	boolean queryMember(String username);
	boolean query(String username, String password);
	
	//修改
	void updateMember(member m);
	
	//刪除
	void deleteMember(int id);
}
