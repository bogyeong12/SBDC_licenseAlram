<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
	<meta name="keywords" content="갱신형 S/W 라이선스 알림 시스템">
	<meta name="description" content="갱신형 S/W 라이선스 알림 시스템">

	<title>갱신형 S/W 라이선스 알림 시스템</title>
</head>

<link rel="stylesheet" type="text/css" href="/css/egovframework/main.css">

<script>
</script>

<body>

	<section class="notice">
	  <div class="page-title">
	        <div class="container">
	            <h3 style="text-align: left">갱신형 S/W 라이선스 알림 시스템 등록</h3>
	        </div>
	    </div>
	  <!-- board list area -->
	    <div id="board-list">
	        <div class="container">
	            <table class="board-table">
	                <colgroup>
						<col style="width: auto;">
					</colgroup>
	                <tbody>
	                <tr>
						<th scope="col" class="th-num">담당자</th>
						<td>
							<input type="text" name=""/>
						</td>
	                </tr>
	                 <tr>
						<th scope="col" class="th-num">S/W명</th>
						<td>
							<input type="text" name=""/>
						</td>
	                </tr>
	                 <tr>
						<th scope="col" class="th-num">전화번호</th>
						<td>
							<input type="text" name=""/>
						</td>
	                </tr>
	                 <tr>
						<th scope="col" class="th-num">라이센스 사용기간</th>
						<td>
							<input type="text" name=""/>
						</td>
	                </tr>
	                 <tr>
						<th scope="col" class="th-num">갱신주기</th>
						<td>
							<input type="text" name=""/>
						</td>
	                </tr>
	                 <tr>
						<th scope="col" class="th-num">비고</th>
						<td>
							<textarea rows="" cols="10"></textarea>
						</td>
	                </tr>
	                </tbody>
	            </table>
	        </div>
	    </div>

		 <div class="btnArea areaRight">
			<button type="button" class="btn btnDark" title="등록 버튼" onclick="*">등록</button>
			<a class="btn btnDark" href="/license/list.do" title="목록 버튼">목록</a>
		</div>

	</section>

</body>
</html>