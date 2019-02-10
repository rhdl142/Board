package com.test.main.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/board/delok.do")
public class DelOk extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		String seq = req.getParameter("seq");
		
		BoardDAO dao = new BoardDAO();
		int result = dao.del(seq);
		
		System.out.println(result);
		
		if(result == 1) {
			resp.sendRedirect("/Board/board/list.do");
		} else {
			resp.getWriter().print("<script>alert('falied');history.back();</script>");
			resp.getWriter().close();
		}
	}
}