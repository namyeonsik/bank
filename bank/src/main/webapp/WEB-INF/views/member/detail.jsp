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

<!doctype html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>Document</title>
</head>
<body>
	<div id="detail" align="center">
		<div class="detailTop">
			<h2>
				<span>회원 정보</span>
			</h2>
			<br><br>
		</div>
		<div class="detailCenter" style="width: 20%;">
			<fieldset class="detailField">
				<div class="input-group">
					<span class="input-group-addon" id="basic-addon1">ID</span> <input
						type="text" class="form-control" name="userid"
						value="${member.userid}" maxlength="20" disabled="disabled" />
				</div><br>
				<div class="input-group">
					<span class="input-group-addon" id="basic-addon1">PW</span> <input type="password"
						class="form-control" name="password" value="${member.password}"
						maxlength="20" disabled="disabled" />
				</div><br>
				<div class="input-group">
					<span class="input-group-addon" id="basic-addon1">NAME</span> <input type="text"
						class="form-control" name="name" value="${member.name}"
						maxlength="20" disabled="disabled" />
				</div><br>
				<div class="input-group">
					<span class="input-group-addon" id="basic-addon1">ADDR</span> <input type="text"
						class="form-control" name="addr" value="${member.addr}"
						maxlength="20" disabled="disabled" />
				</div><br>
				<div class="input-group">
					<span class="input-group-addon" id="basic-addon1">BIRTH</span> <input type="text"
						class="form-control" name="birth" value="${member.birth}"
						maxlength="20" disabled="disabled" />
				</div><br>
				<div class="input_button">
					<span class="input_box"> <input type="button"
						class="btn btn-default" id="detailButton" value="정보수정"
						onclick="updateForm()" /> <input type="button"
						class="btn btn-default" id="cnclButton" value="취소하기" />
					</span>
				</div>
			</fieldset>
		</div>
	</div>
	<script type="text/javascript">
		function updateForm() {
			location.href = "${context}/member/updateForm";
		}
	</script>
</body>
</html>