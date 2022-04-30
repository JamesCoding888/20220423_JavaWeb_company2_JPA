package controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.implMember;
import model.member;
@WebServlet("/loginController")
public class loginController extends HttpServlet {
	private static final long serialVersionUID = 1L;	
	
	public loginController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 1. 接收-->request
		 * 2. 判斷-->queryMember(帳號,密碼)
		 * 3. true-->會員轉 session-->member Object-->member/loginSuccess.jsp
		 * 4. false-->member/loginError
		 */
		request.setCharacterEncoding("utf-8");
//		response.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("big5"); 
		String username = request.getParameter("username");
		String password = request.getParameter("password");		
		System.out.println(username);
		System.out.println(password);	 
		List<member> l = new implMember().queryMember(username, password);
		

		// 1. 客戶未要求當 member 會員存在時，要導入到其它頁面, query(username, password) 的帳號密碼判斷是否存在
		/*
		if(new implMember().query(username, password)) {
			response.sendRedirect("member/loginSuccess.jsp");
		} else {			
			response.sendRedirect("member/loginError.jsp");
		} 
		*/
		// 2. 客戶有要求當 member 會員存在時，要導入到其它頁面, 藉由 session 來抓取 member 的物件，如果存在，導入到指定頁面
//		/*				
		if(l.size() != 0)
		{
			member[] m=l.toArray(new member[l.size()]);			
			request.getSession().setAttribute("M", m[0]);					
			response.sendRedirect("member/loginSuccess.jsp");
		}
		else
		{
			response.sendRedirect("member/loginError.jsp");
		}
//		*/			
	}
}
