<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
    		<br/>
    		
			<h3 class="text-center">
				자유게시판
			</h3>
			<br/>
			<c:choose>
			<c:when test="${bList==null }">
				<h3 class="text-center">
				게시글이 없습니다.
				</h3>
			</c:when>
			<c:otherwise>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>
							#
						</th>
						<th>
							Product
						</th>
						<th>
							Payment Taken
						</th>
						<th>
							Status
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							1
						</td>
						<td>
							TB - Monthly
						</td>
						<td>
							01/04/2012
						</td>
						<td>
							Default
						</td>
					</tr>
				</tbody>
			</table>
			<div>
			<form action="insertBoard.trc">
			<input class="btn btn-secondary pull-right" type="submit" value="글쓰기"/> 
			</form>
				<nav>
					<ul class="pagination">
						<li class="page-item">
							<input type="hidden" value="Free" name="boardType"/> 
							<a class="page-link" href="#">Previous</a>
						</li>
						<li class="page-item">
							<a class="page-link" href="#">1</a>
						</li>
						<li class="page-item">
							<a class="page-link" href="#">2</a>
						</li>
						<li class="page-item">
							<a class="page-link" href="#">3</a>
						</li>
						<li class="page-item">
							<a class="page-link" href="#">4</a>
						</li>
						<li class="page-item">
							<a class="page-link" href="#">5</a>
						</li>
						<li class="page-item">
							<a class="page-link" href="#">Next</a>
						</li>
					</ul>
				</nav>
			</div>
			</c:otherwise>
			</c:choose>