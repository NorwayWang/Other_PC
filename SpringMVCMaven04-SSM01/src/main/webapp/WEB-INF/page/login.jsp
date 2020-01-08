<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>登录页面</title>
	</head>
	<body>
		<div style="width:320px;height:180px;padding:5px;background: #fafafa;">
			<h3>登录页面</h3>
			<form action="login" method="post">
				<table>
					<tr>
						<td><label>登录名: </label></td>
						<td><input type="text" id="loginname" name="用户名" ></td>
					</tr>
					<tr>
						<td><label>密码: </label></td>
						<td><input type="password" id="password" name="密码"></td>
					</tr>
					<tr>
						<td><input id="submit" type="submit" value="登录"></td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>
