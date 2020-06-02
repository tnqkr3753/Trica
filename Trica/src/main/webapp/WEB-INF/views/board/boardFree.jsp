<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
    		<br/>			
    		<h3 class="text-center">
				
			
    		<c:choose>
    			<c:when test="${bList[0].boardType eq 'Free'}">
    				자유게시판
    			</c:when>
    			<c:when test="${bList[0].boardType eq 'Inquiry'}">
    				문의게시판
    			</c:when>
    			<c:when test="${bList[0].boardType eq 'Review'}">
    				상품리뷰
    			</c:when>

			</c:choose>
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
							제목
						</th>
						<th>
							작성자
						</th>
						<th>
							작성일
						</th>
						<th>
							조회수
						</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${bList }" var="board">
					<tr style="cursor:pointer" no="${board.boardNo }">
						<td>
							${board.boardNo }
						</td>
						<td>
							<c:if test="${board.lvl ge 2}">
								<c:forEach begin="3" end="${board.lvl }" >
									&nbsp;
								</c:forEach>
								<img alt="" src="./resources/img/reply.png">
							</c:if>
							${board.boardTitle }
						</td>
						<td>
							${board.memberId }
						</td>
						<td>
							${board.dateKor }
						</td>
						<td>
							${board.viewCnt }
						</td>
					</tr>
					</c:forEach>
				</tbody>
				
			</table>
			<div>
			<form action="insertBoard.trc">
			<input class="btn btn-secondary pull-right" type="submit" value="글쓰기"/> 
			</form>
				<nav>
					<ul id="page-nav" class="pagination" btype="${bList[0].boardType}">
						<li class="page-item">
							<a class="page-link" href="#">Previous</a>
						</li>
						<!-- 페이징 -->
						<c:forEach items="${pageList }" var="page"> <!-- for 시작 -->
						
							<c:choose>
								<c:when test="${pageNum }==page">
									<li class="page-item active">
										<a class="page-link " href="#"  >${page }</a>
									</li>
								</c:when>
								<c:otherwise>
									<li class="page-item">
										<a class="page-link " href="#"  >${page }</a>
									</li>
								</c:otherwise>
							</c:choose>
							
						
						</c:forEach>			<!-- for 끝 -->
						<li class="page-item">
							<a class="page-link" href="#" >Next</a>
						</li>
						
					</ul>
				</nav>
			</div>
			</c:otherwise>
			</c:choose>
			<script type="text/javascript">
			$("#tabContent nav .page-item").click(function(){
				var boardType = $('#page-nav').attr('btype');
				var pageNum = $(this).find('a').text();
				if(pageNum == 'Next'){
					pageNum = '${pageNum}'+"plus1";
				}else if(pageNum == 'Previous'){
					pageNum = '${pageNum}'+"minus1"
				}
				$.ajax({
					type : 'get',                 //get방식으로 통신
					async : true,
					contentType : 'application/x-www-form-urlencoded;charset=UTF-8',
					url : "getBoardList.trc?pageNum="+pageNum+"&bType="+boardType+"",    //탭의 data-tab속성의 값으로 된 html파일로 통신
					dataType : "html",            //html형식으로 값 읽기
					error : function() {          //통신 실패시
						alert('통신실패!');
					},
					success : function(data) {    //통신 성공시 탭 내용담는 div를 읽어들인 값으로 채운다.
						$('#tabContent').html(data);
					}
				});
			});
			$("#tabContent table tbody tr").click(function(){
				var boardNo = $(this).attr('no');
				$.ajax({
					type : 'post',                 //get방식으로 통신
					async : true,
					contentType : 'application/x-www-form-urlencoded;charset=UTF-8',
					url : "boardView.trc?boardNo="+boardNo,    //탭의 data-tab속성의 값으로 된 html파일로 통신
					dataType : "html",            //html형식으로 값 읽기
					error : function() {          //통신 실패시
						alert('통신실패!');
					},
					success : function(data) {    //통신 성공시 탭 내용담는 div를 읽어들인 값으로 채운다.
						$('#tabContent').html(data);
					}
				});
			});
			</script>