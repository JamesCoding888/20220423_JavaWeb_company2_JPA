package dao;

import java.util.List;

import model.porder;

public interface implPorder {
	// Create
	public void addPorder(Object p);
	
	// Read
	List<porder> queryAll();
	List<porder> querySum(int Start,int end);
	porder queryId(int id);
	
	// Update
	void update(porder p);
	// Delete
	public void delete(int id);
}
