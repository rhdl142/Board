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
		
			#tbl th {
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
			
			#tbl tr:nth-child(3) td {
				height: 250px;
			}

		</style>
		<script>
		
		</script>
	</head>
	<body>
		<div id="main">			
			<div id="contents">
			
				<form action="/Board/board/addok.do" method="post">
					<table id="tbl" class="table">
						<tr>
							<th>이름</th>
							<td>
								<input type="text" name="name" required id="name" class="form-control" />
							</td>
						</tr>
						<tr>
							<th>제목</th>
							<td>
								<input type="text" name="title" required id="title" class="form-control" />
							</td>
						</tr>
						<tr>
							<th>내용</th>
							<td><textarea name="content" id="content" class="form-control" rows="12" required></textarea></td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td>
								<input type="text" name="passwd" required id="passwd" class="form-control" />
							</td>
						</tr>
					</table>
					
					<div id="btns">
						<input type="submit" value="작성 완료" class="btn btn-success">
						<input type="button" value="뒤로 가기" class="btn btn-danger"onclick="history.back();">
					</div>
				</form>

			</div>
		</div>
	</body>
</html>