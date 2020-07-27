<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Doggle</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700, 900|Vollkorn:400i"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/fonts/icomoon/style.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jquery-ui.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jquery.fancybox.min.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/fonts/flaticon/font/flaticon.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/aos.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
</head>

<!-- Start of Topbar -->

<%@include file="topbar.jsp"%>

<!-- End of Topbar -->

<!-- Start of main -->
  	<section style="padding-top: 100px;">
      <div class="container">
        <div class="row">
          <div class="col-md-7 align-self-center text-center text-md-left">
            <div class="intro-text">
				<font size=10px> info 등록 </font>   	
    		</div>
      	  </div>
     	</div>
      </div>
    </section>

<section id="container">
	<form action='<c:url value='/story/detailInfoWriter'/>' method="post">
		<div class="form-group">
			<label for="p_no">게시글 번호</label> <input type="text"
				class="form-control" id="p_no" name="p_no"
				value="${read.p_no }" readonly>
		</div>
		
		</form>
		<div class="form-group">
			<label for="info_title">제목</label> <input type="text"
				class="form-control" id="info_title" name="title"
				value="${read.info_title }" readonly>
		</div>
		<div class="form-group">
			<label for="info_content">내용</label> 
			<span class="form-control" id="info_content" name="contents" style="display: table; min-height: 300px; height: height:auto; border: 1px solid black; overflow: hidden;"> 
			${read.info_content }
			</span>
			<%-- <input type="text"
				class="form-control" id="fb_content" name="contents"
				value="${read.fb_content }" readonly> --%>
		</div>
		<div class="inputArea">
			<button type="button" class="btn btn-primary"
				onclick="location.href='../main' ">돌아가기</button>
		</div>
		
		<button id="modify_btn">수정하기</button><button id="cancel_btn">취소</button>
		<script>
		// 폼을 변수에 저장
		var formObj = $("form[role='form']";)
		
		// 취소 버튼 클릭
		$("#cancel_btn").click(function()){
			formObj.attr("action", "/info/read?p_no=" +$("#p_no").val());
			formObj.attr("method", "get");
			fromObj.submit();
			});
		</script>
</section>


<!-- End of main -->

<!-- Start of footer -->

<%@include file="../nav/footer.jsp"%>

<!-- End of footer -->
<!-- .site-wrap -->

<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.countdown.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.fancybox.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.sticky.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/isotope.pkgd.min.js"></script>


<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>


</body>
</html>