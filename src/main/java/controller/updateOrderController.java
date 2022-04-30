package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.porderDao;
import model.porder;
@WebServlet("/updateOrderController")
public class updateOrderController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");		
		int id = Integer.parseInt(request.getParameter("id"));
		porder p = new porderDao().queryId(id);		
		String desk = request.getParameter("desk");
		int A = Integer.parseInt(request.getParameter("A"));
		int B = Integer.parseInt(request.getParameter("B"));
		int C = Integer.parseInt(request.getParameter("C"));
		int D = Integer.parseInt(request.getParameter("D"));
		int E = Integer.parseInt(request.getParameter("E"));
		int F = Integer.parseInt(request.getParameter("F"));
		
		
		p.setDesk(desk);
		p.setA(A);
		p.setB(B);
		p.setC(C);
		p.setD(D);
		p.setE(E);
		p.setF(F);		
		p.getSum();
		
		new porderDao().update(p);
		
		
		response.sendRedirect("porder/updateOrder.jsp");
	}
	
}
