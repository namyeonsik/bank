<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
</head>
<body>
	<div id="login">
		<div class="loginTop">
			<h2>
				<p>LOGIN</p>
				<span>로그인</span>
			</h2>
		</div>
		<div class="loginCenter">
			<form action="/member/login" method="get" name="loginForm">
				<fieldset class="loginField">
					<div class="input_row">
						<span class="input_box">
							<input type="text" id="userid" placeholder="아이디" maxlength="20" />
						</span>
					</div>
					<div class="input_row">
						<span class="input_box">
							<input type="password" id="password" placeholder="비밀번호" maxlength="20"/>
						</span>
					</div>
					<div class="input_button">
						<span class="input_box">
							<input type="button" id="loginButton" value="로그인"/>
						</span>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</body>
</html>