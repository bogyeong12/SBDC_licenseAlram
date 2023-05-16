<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="validator"
	uri="http://www.springmodules.org/tags/commons-validator"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<meta name="keywords" content="갱신형 S/W 라이선스 알림 시스템">
<meta name="description" content="갱신형 S/W 라이선스 알림 시스템">

<title>갱신형 S/W 라이선스 알림 시스템</title>
</head>

<link rel="stylesheet" type="text/css"
	href="/css/egovframework/main.css">

<script>
	function fn_egov_select_linkPage(page) {
		document.listForm.pageIndex.value = page;
		document.listForm.action = "<c:url value='/license/list.do'/>";
		document.listForm.submit();
	}

	function fn_Search() {
		document.listForm.pageIndex.value = 1;
		document.listForm.action = "<c:url value='/license/list.do'/>";
		document.listForm.submit();
	}
</script>

<body>


	<section class="notice">
		<div class="page-title">
			<div class="container">
				<h3>갱신형 S/W 라이선스 알림 시스템</h3>
			</div>
		</div>
		<!-- board seach area -->
		<div id="board-search">
			<div class="container">
				<div class="search-window">
					<form name="listForm" id="listForm"
						action="<c:url value='/license/list.do'/>" method="post">
						<input name="pageIndex" id=pageIndex type="hidden"
							value="<c:out value="${param.pageIndex}"/>">
						<div class="search-wrap">
							<label for="search" class="blind">공지사항 내용 검색</label> <input
								type="text" name="searchWrd" placeholder="검색어를 입력해주세요."
								value="<c:out value="${param.searchWrd}"/>">
							<button type="button" class="btn btn-dark" onclick="fn_Search()">검색</button>
						</div>
					</form>
				</div>
			</div>
		</div>

		<!-- board list area -->
		<div id="board-list">
			<div class="container">
				<table class="board-table">
					<colgroup>
						<col style="width: auto;">
					</colgroup>

					<thead>
						<tr>
							<th scope="col" class="th-num">NO</th>
							<th scope="col" class="th-title">S/W명</th>
							<th scope="col" class="th-title">담당자</th>
							<th scope="col" class="th-date">사용기간</th>
							<th scope="col" class="th-title">갱신주기</th>
						</tr>
					</thead>
					<tbody>
						<!-- <tr>
			                    <td>1</td>
			                    <td>서버용 GPKI</td>
			                    <td>성보경</td>
			                    <td>23.02.27 ~ 24.02.27</td>
			                    <td>1년</td>
			                </tr> -->
						<!-- JSTL 이용했을때 코드 -->
						<c:forEach var="result" items="${resultList}" varStatus="status">
							<tr>
								<td><c:out value="${status.count}" /></td>
								<td><c:out value="${result.swNm}" /></td>
								<td><c:out value="${result.empNm}" /></td>
								<td><c:out value="${result.startDt}" /> ~ <c:out
										value="${result.startDt}" /></td>
								<td><c:out value="${result.rnwlCycle}" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>

		<div class="btnArea areaRight">
			<a class="btn btnDark" href="/license/regPage.do" title="등록 버튼">글쓰기</a>
		</div>

		<!-- paging navigation -->
		<div class="pagination">
			<ul>
				<ui:pagination paginationInfo="${paginationInfo}" type="image"
					jsFunction="fn_egov_select_linkPage" />
			</ul>
		</div>

	</section>

</body>
</html>