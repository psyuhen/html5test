<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Geolocation</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.7.1.min.js"></script>
</head>
<body>
	<input type="button" id="location" value="点击我查看你的位置">
	
	
	<script type="text/javascript">
		$("#location").bind("click",function(){
			//测试是否支持地理位置
			if(navigator && navigator.geolocation){
				navigator.geolocation.getCurrentPosition(function(position){
					$("body").append("<p>纬度：" + postion.coords.latitude + " </p>");
					$("body").append("<p>经度：" + postion.coords.longitude + " </p>");
				}, function(err){
					// The PositionError object returned contains the following attributes:
					// code: a numeric response code
					// PERMISSION_DENIED = 1
					// POSITION_UNAVAILABLE = 2
					// TIMEOUT = 3
					// message: Primarily for debugging. It's recommended not to show this error
					// to users.
					
					switch(err.code){
					case 1:
						alert("用户拒绝获取地理位置");
						break;
					case 2:
						alert("你的地理位置信息不可用");
						break;
					case 3:
						alert("获取地理位置信息超时");
						break;
					default:
						alert("获取地理位置信息报错了");
						break;
					}
				})
			}else{
				alert("浏览器不支持地理位置！");
			}
		});
	</script>
</body>
</html>