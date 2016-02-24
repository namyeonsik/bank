<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<body>
	<div id="join" align="center">
		<div class="joinTop">
			<h2>
				<p>JOIN</p>
				<span>회원가입</span>
			</h2>
		</div>
		<div class="joinCenter" style="width: 20%;">
			<form action="${context}/member/join" method="get" name="joinForm">
				<fieldset class="joinField">
					<div class="form-group">
						<span class="input_box">
							<input type="text" class="form-control" id="userid" placeholder="아이디" maxlength="20" />
						</span>
					</div>
					<div class="form-group">
						<span class="input_box">
							<input type="text" class="form-control" id="name" placeholder="이름" maxlength="20" />
						</span>
					</div>
					<div class="form-group">
						<span class="input_box">
							<input type="password" class="form-control" id="password" placeholder="비밀번호" maxlength="20"/>
						</span>
					</div>
					<div class="form-group">
						<span class="input_box">
							<input type="text" class="form-control" id="addr" placeholder="주소" maxlength="20" />
						</span>
					</div>
					<div class="form-group">
						<span class="input_box">
							<input type="text" class="form-control" id="birth" placeholder="생일" maxlength="20" />
						</span>
					</div>
					<div class="input_button">
						<span class="input_box">
							<input type="button" class="btn btn-default" id="joinButton" value="회원가입"/>
							<input type="button" class="btn btn-default" id="cnclButton" value="취소하기"/>
						</span>
					</div>
				</fieldset>				
			</form>
		</div>
	</div>
</body>
</html>