<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
   <script src="./resources/js/boardView.js"></script>
    <br/>
			<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="card">
				<h5 class="card-header">
					${ board.boardTitle}
				</h5>
				<div class="card-body">
					<table class="table">
						<tbody>
							<tr>
								<td colspan="1">작성자</td><td colspan="1">${ board.memberId}</td>
								<td colspan="1">작성일시</td> <td colspan="1">${ board.dateKor }</td> 
							</tr>
							<tr>
								<td colspan="1">게시판</td>
								<td colspan="1">${ board.boardType}</td> 
								<td colspan="1">조회수</td>
								<td colspan="1">${ board.viewCnt}</td> 
							</tr>
							<tr>
								<td colspan="4">${board.boardContent}</td>
							</tr>
							<tr>
								<td colspan="4"><img src="./resources/upload/board/img/${board.boardFname }"/>${board.boardFname }</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="card-footer">
					
					<input id="btn-list" type="button" class="btn btn-secondary" value="목록가기"/>
					<input id="btn-reply" type="button" class="btn btn-secondary" value="답글달기"/>
					<input type="hidden" value="${board.boardNo }" name="boardNo"/>
					<input type="hidden" value="${board.boardType }" name="boardType"/>
					<input id="btn-modify" type="button" class="btn btn-secondary" value="수정하기"/>
					<input id="btn-delete" type="button" class="btn btn-secondary float-right" value="삭제하기"/>
				</div>
			</div>
		</div>
	</div>
</div>
