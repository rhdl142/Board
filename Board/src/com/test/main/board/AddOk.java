package com.test.main.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/board/addok.do")
public class AddOk extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		String name = req.getParameter("name");
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		String passwd = req.getParameter("passwd");
		
		BoardDAO dao = new BoardDAO();
		
		int result = dao.add(name, title, content,passwd);
		
		if(result == 1) {
			resp.sendRedirect("/Board/board/list.do");
		} else {
			resp.getWriter().print("<script>alert('falied');history.back();</script>");
			resp.getWriter().close();
		}
	}
}