<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>摄像头列表</title>
<script type="text/javascript" src="scripts/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="scripts/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="scripts/css/bootstrap.min.css" />
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-10">
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<caption>
							<h2>Camera列表</h2>
						</caption>
						<thead>
							<tr>
								<th class="col-lg-1">IP地址</th>
								<th class="col-lg-2">摄像头序列号</th>
								<th class="col-lg-1">用户名</th>
								<th class="col-lg-1">密码</th>
								<th class="col-lg-1">连接操作</th>
								<th class="col-lg-1">状态</th>
								<th class="col-lg-2">推送服务器地址</th>
								<th class="col-lg-2">推送操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${ipcList}" var="ipc">
								<tr>
									<td>${ipc.key}</td>
									<td><input type="text" name="username" value="${ipc.value.id}" /></td>
									<td>
										<input type="text" name="username" value="${ipc.value.username}" />
									</td>
									<td><input type="text" name="password" value="${ipc.value.password}" /></td>
									<td><a href="connectIPC?ip=${ipc.key}&id=${ipc.value.id}&username=${ipc.value.username}&password=${ipc.value.password}&serverIP=${ipc.value.serverIP}">连接</a></td>
									<td>${ipc.value.connectionStatus==true?'连接成功':'未连接'}</td>
									<td><input type="text" name="username" value="${ipc.value.serverIP}" /></td>
									<td><a href="sendStreamForIPC?ip=${ipc.key}&id=${ipc.value.id}&username=${ipc.value.username}&password=${ipc.value.password}&serverIP=${ipc.value.serverIP}">推送</a></td>
								</tr>
							</c:forEach>
							<tr>
									<td>192.168.0.102</td>
									<td><input type="text" name="username" value="${ipc.value.id}" /></td>
									<td>
										<input type="text" name="username" value="${ipc.value.username}" />
									</td>
									<td><input type="text" name="password" value="${ipc.value.password}" /></td>
									<td><a href="connectIPC?ip=192.168.0.102&id=test888&username=admin&password=zpp123456&serverIP=182.92.155.22">连接</a></td>
									<td>未连接</td>
									<td><input type="text" name="username" value="${ipc.value.serverIP}" /></td>
									<td><a href="sendStreamForIPC?ip=${ipc.key}&id=${ipc.value.id}&username=${ipc.value.username}&password=${ipc.value.password}&serverIP=${ipc.value.serverIP}">推送</a></td>
								</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>