<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Notifications</title>
</head>
<body>
<input type="button" value="是否支持桌面提醒" onclick="supported();"/>
<input type="button" value="请求权限" onclick="requestPermission();"/>
<input type="button" value="请求权限状态" onclick="checkPermission();"/>
<input type="button" value="显示文本消息" onclick="textMsg();"/>
<input type="button" value="显示HTML消息" onclick="htmlMsg();"/>

<script type="text/javascript">
//判断浏览器是否支持Notifications
function supported(){
	if(window.webkitNotifications){
		alert('浏览器支持Notifications');
	} else {
		alert('浏览器不支持Notifications');
	}
}
//请求桌面通知权限
function requestPermission() {
	window.webkitNotifications.requestPermission();
}
//获取请求权限状态
function checkPermission() {
	switch (window.webkitNotifications.checkPermission()) {
		case 0:alert('用户已允许显示桌面通知');break;
		case 1:alert('用户还没有允许或拒绝显示桌面通知');break;
		case 2:alert('用户已拒绝显示桌面通知');break;
	}
}
//创建文本消息
function textMsg(){
	var icon = './img/html5_logo.png';
	var title = 'HTML5 Notifications';
	var body =  'http://www.huateng.com';
	var popup = window.webkitNotifications.createNotification(icon, title, body);
	popup.ondisplay = function(event) {
		setTimeout(function() {
			event.currentTarget.cancel();
		}, 5000);
	}
	popup.show();
}
//创建HTML消息
function htmlMsg(){
	var popup = window.webkitNotifications.createHTMLNotification('progress.html');
	popup.ondisplay = function(event) {
		setTimeout(function() {
			event.currentTarget.cancel();
		}, 5000);
	}
	popup.show();
}
</script>
</body>
</html>