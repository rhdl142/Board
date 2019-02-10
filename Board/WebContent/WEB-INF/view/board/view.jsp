<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Board Test</title>
		<jsp:include page="/inc/asset.jsp"></jsp:include>
		<style>
			
			body{ 
				padding-top:200px;
			}
		
			#tbl {
				width: 700px;
				margin: 0px auto 20px auto;
			}
		
			#tbl th{
				width: 150px; 
				text-align: center;
				vertical-align: middle;
				background-color: #eee;
			}
			
			#tbl {
				height: 250px;
			}
			
			#tbl td{width: 550px;}
			
			#btns {
				width: 700px;
				margin: 0px auto;
			}
			
			#tbl tr:nth-child(4) td {
				height: 250px;
			}

		</style>
		<script>
			function checkEdit(passwd,seq) {
				var pw = prompt('암호를 입력하세요');
				
				if(pw == passwd) {
					location.href='/Board/board/edit.do?seq='+seq;
				} else {
					alter('falied');
				}
			}
			
			function checkDel(passwd,seq) {
				var pw = prompt('암호를 입력하세요');
				
				if(pw == passwd) {
					location.href='/Board/board/delok.do?seq='+seq;
				} else {
					alter('falied');
				}
			}
		</script>
	</head>
	<body>
		<div id="main">			
			<div id="contents">
				<table id="tbl" class="table table-bordered">
					<tr>
						<th>번호</th>
						<td>${dto.seq}</td>
					</tr>
					<tr>
						<th>이름</th>
						<td>${dto.name}</td>
					</tr>
					<tr>
						<th>제목</th>
						<td>${dto.title}</td>
					</tr>
					<tr>
						<th>내용</th>
						<td>${dto.content}</td>
					</tr>
					<tr>
						<th>날짜</th>
						<td>${dto.regdate}</td>
					</tr>
				</table>
				
				<div id="btns">
					<input type="button" value="수정" class="btn btn-success"onclick="checkEdit(${dto.passwd},${dto.seq });">
					<input type="button" value="삭제" class="btn btn-danger"onclick="checkDel(${dto.passwd},${dto.seq });">
				</div>
			</div>
		</div>
	</body>
</html>