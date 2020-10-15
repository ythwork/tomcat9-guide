package com.ythwork.session;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		Cookie[] cookies = req.getCookies();
		for(Cookie ck : cookies) {
			ck.setMaxAge(0);
			res.addCookie(ck);
		}
		
        HttpSession ses = req.getSession(false);
        if(ses != null){
            ses.invalidate();
        }
        res.sendRedirect("templates/login.jsp");
    }
}
