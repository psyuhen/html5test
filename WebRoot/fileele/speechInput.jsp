<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Speech Input</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.7.1.min.js"></script>
</head>
<body>
	<!-- The x-webkit-speech attribute can be used on any HTML5 input element 
	with a type of text, number, tel, or search. 
	Unfortunately, it’s not permitted on textarea fields. 
	-->
	<input type="text" x-webkit-speech="x-webkit-speech"  id="speechInput">
	
	<script type="text/javascript">
		if($("#speechInput").attr("x-webkit-speech") === undefined){
			alert("浏览器不支持语音输入");
		}
	</script>
</body>
</html>