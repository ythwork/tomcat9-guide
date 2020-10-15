package com.ythwork.session;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private final String member = "member";
    private final String password = "1234";
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
    	res.sendRedirect("templates/login.jsp");
    }
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String member = req.getParameter("member");
        String password = req.getParameter("password");

        if (this.member.equals(member) && this.password.equals(password)) {
            HttpSession ses = req.getSession(false);
            if (ses != null) {
                ses.invalidate();
            }

            Cookie name = new Cookie("name", "양태환");
            res.addCookie(name);
            HttpSession session = req.getSession(true);
            session.setAttribute("language", "JAVA");
            res.sendRedirect("templates/loginsuccess.jsp");
        } else {
        	HttpSession ses = req.getSession(true);
        	ses.setAttribute("failure", "WRONG INFO");
          res.sendRedirect("templates/login.jsp");
        }
    }
}
