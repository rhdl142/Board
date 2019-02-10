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
			width: 650px;
			margin:0px auto 20px auto;
		}
	
		#tbl th:nth-child(1) {width:50px;}
		#tbl th:nth-child(2) {width:420px;}
		#tbl th:nth-child(3) {width:80px;}
		#tbl th:nth-child(4) {width:100px;}
	
		#btns {
			width: 650px;
			margin:0px auto;
		}
		
		#tbl th,#tbl td {
			text-align:center;
		}
	
		#tbl th {
			background-color: #eee;
		}
		
	</style>
	<script>
			$(document).ready(function(){
				
			});
	</script>
	</head>
	<body>
		<div id="main">
			
			<div id="contents">
				<section>	
					
					<table id="tbl" class="table table-bordered">
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>글쓴이</th>
							<th>날짜</th>
						</tr>
						<c:if test="${list.size() == 0}">
						<tr>
							<td colspan="4">현재 게시물이 없습니다.</td>
						</tr>
						</c:if>
						<c:if test="${list.size() != 0}">
						<c:forEach items="${list }" var="dto">
 						<tr>
							<td>${dto.seq}</td>
							<td><a href="/Board/board/view.do?seq=${dto.seq }">${dto.title }</a></td>
							<td>${dto.name }</td>
							<td>${dto.regdate }</td>
						</tr>
						</c:forEach>
						</c:if>
					</table>
					
					<div id="btns">
						<input type="button" value="쓰기" class="btn btn-success" onclick="location.href='/Board/board/add.do';">
					</div>
				</section>
			</div>
		</div>
	</body>
</html>