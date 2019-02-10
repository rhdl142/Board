package com.test.main.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.test.main.DBUtil;

public class BoardDAO {
	
	private Connection conn;
	private PreparedStatement stat;
	private ResultSet rs;
	
	public BoardDAO() {
		this.conn = DBUtil.getConnection();
	}
	
	/**
	 * 게시판  list
	 * 
	 * @return 게시판 list
	 */
	public ArrayList<BoardDTO> list() {
		
		ArrayList<BoardDTO> list = new ArrayList<>();
		
		try {
			String sql = "select * from tblBoard";
			
			stat = conn.prepareStatement(sql);
			rs = stat.executeQuery();
			
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				
				dto.setSeq(rs.getString("seq"));
				dto.setName(rs.getString("name"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setPasswd(rs.getString("passwd"));
				
				list.add(dto);
			}
			
			return list;
		} catch (Exception e) {
			System.out.println("BoardDAO.listSize :" + e.toString());
		}
		return null;
	}
	
	/**
	 * 게시판 view
	 * 
	 * @param seq 게시판 리스트 번호
	 * @return 해당 게시글 정보
	 */
	public BoardDTO detail(String seq) {
		
		BoardDTO dto = new BoardDTO();
		
		try {
			String sql = "select * from tblBoard where seq = ?";
			
			stat = conn.prepareStatement(sql);
			stat.setString(1, seq);
			rs = stat.executeQuery();
			
			if(rs.next()) {
				dto.setSeq(rs.getString("seq"));
				dto.setName(rs.getString("name"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setPasswd(rs.getString("passwd"));
				
				return dto;
			}
		} catch (Exception e) {
			System.out.println("BoardDAO.detail :" + e.toString());
		}
		return null;
	}

	public int add(String name, String title, String content, String passwd) {
		
		try {
			String sql = "insert into tblBoard values(board_seq.nextval, ?, ?, ?, default,?)";
			
			stat = conn.prepareStatement(sql);
			stat.setString(1, name);
			stat.setString(2, title);
			stat.setString(3, content);
			stat.setString(4, passwd);
			 
			int result = stat.executeUpdate();
			
			return result;	
		} catch (Exception e) {
			System.out.println("BoardDAO.add :" + e.toString());
		}
		
		return 0;
	}

	public int edit(String title, String content, String passwd, String seq) {
		
		try {
			String sql = "update tblBoard set title=?,content=?,passwd=? where seq=?";
			
			stat = conn.prepareStatement(sql);
			stat.setString(1, title);
			stat.setString(2, content);
			stat.setString(3, passwd);
			stat.setString(4, seq);
			 
			int result = stat.executeUpdate();
			
			return result;	
		} catch (Exception e) {
			System.out.println("BoardDAO.edit :" + e.toString());
		}
		
		return 0;
	}

	public int del(String seq) {

		try {
			String sql = "delete from tblBoard where seq = ?";
			
			stat = conn.prepareStatement(sql);
			stat.setString(1, seq);
			 
			int result = stat.executeUpdate();
			
			return result;	
		} catch (Exception e) {
			System.out.println("BoardDAO.del :" + e.toString());
		}
		
		return 0;
	}
}


