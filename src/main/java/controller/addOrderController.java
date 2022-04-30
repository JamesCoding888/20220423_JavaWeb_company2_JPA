package controller;

import java.io.IOException; 

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.porderDao;
import model.porder;
@WebServlet("/addOrderController")
public class addOrderController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 1.擷取session物件p
		 * 2.新增到資料庫
		 * 3.切換到finish.jsp
		 */
		/*HttpSession session=request.getSession();
		porder p=(porder) session.getAttribute("P");*/
		
		porder p=(porder)request.getSession().getAttribute("P");
		
		new porderDao().addPorder(p);
		
		response.sendRedirect("porder/finish.jsp");
	}
	
}
