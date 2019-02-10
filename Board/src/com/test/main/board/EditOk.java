package com.test.main.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/board/editok.do")
public class EditOk extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		String seq = req.getParameter("seq");
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		String passwd = req.getParameter("passwd");
		
		BoardDAO dao = new BoardDAO();
		System.out.println("seq"+seq);
		System.out.println("title"+title);
		System.out.println("content"+content);
		System.out.println("passwd"+passwd);
		int result = dao.edit(title, content, passwd, seq);
		
		System.out.println(result);
		
		if(result == 1) {
			resp.sendRedirect("/Board/board/list.do");
		} else {
			resp.getWriter().print("<script>alert('falied');history.back();</script>");
			resp.getWriter().close();
		}
	}
}