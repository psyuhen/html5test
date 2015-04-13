<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Notifications</title>
</head>
<body>
<input type="button" value="是否支持桌面提醒SUPPORTED" onclick="supported();"/>
<input type="button" value="请求权限" onclick="requestPermission();"/>
<input type="button" value="请求权限状态" onclick="checkPermission();"/>
<input type="button" value="显示文本消息" onclick="textMsg();"/>

<script type="text/javascript">
//判断浏览器是否支持Notifications
function supported(){
	if(window.Notification){
		alert('浏览器支持Notifications');
	} else {
		alert('浏览器不支持Notifications');
	}
}
//请求桌面通知权限
function requestPermission() {
	window.Notification.requestPermission();
}
//获取请求权限状态
function checkPermission() {
	switch (window.Notification.Permission) {
		case "granted":alert('用户已允许显示桌面通知');break;
		case undefined:alert('用户还没有允许或拒绝显示桌面通知');break;
		case "denied":alert('用户已拒绝显示桌面通知');break;
	}
}
//创建文本消息
function textMsg(){
	var notification = new Notification('Hello Notification',{
		 body:"I hope that all the browser will support this\                   function!"
	});
}
</script>
</body>
</html>