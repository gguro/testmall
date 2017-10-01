package com.mall.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mall.dao.MemberDAO;

/**
 * Servlet implementation class ForgetIdServlet
 */
@WebServlet("/forgetid.do")
public class ForgetIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgetIdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String url = "forgetid.jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		MemberDAO mDao = MemberDAO.getInstance();
		
		String userid = mDao.searchIdByInfo(email);
		if(userid == null || userid.equals("")) {
			request.setAttribute("userid", "userid");
			request.setAttribute("result", "-1");
		}
		else {
			request.setAttribute("userid", "userid");
			request.setAttribute("result", "1");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp"); 
		dispatcher.forward(request, response);
	}

}
