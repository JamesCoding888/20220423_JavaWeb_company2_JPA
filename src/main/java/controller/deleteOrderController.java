package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.porderDao;
@WebServlet("/deleteOrderController")
public class deleteOrderController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 1.接收--->id
		 * 2.delete(id)
		 * 3.切換回deleteOrder.jsp
		 */
		
		int id = Integer.parseInt(request.getParameter("id"));
		new porderDao().delete(id);
		
		response.sendRedirect("porder/deleteOrder.jsp");
	}

}
