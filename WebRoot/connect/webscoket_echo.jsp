<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WebScoket Echo</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/webscoket_echo.js"></script>

<style type="text/css">
	#console-container {
		float: left;
		margin-left: 15px;
		width: 400px;
	}
	
	#console {
		border: 1px solid #CCCCCC;
		border-right-color: #999999;
		border-bottom-color: #999999;
		height: 170px;
		overflow-y: scroll;
		padding: 5px;
		width: 100%;
	}
	
	#console p {
		padding: 0;
		margin: 0;
	}
</style>
</head>
<body>
	<table>
		<tr>
			<td>地址:</td>
			<td>
				<input type="text" id="address" style="width:500px" name = "address" value="ws://localhost:8080/html5test/websocket/echoHello"/>
				<br/>
				<input type="button" value="连接webscoket" id="btnconn"/>
				<input type="button" value="断开连接webscoket" id="btndisconn" disabled="disabled"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<div>
		            <textarea id="message" style="width: 350px">Here is a message!</textarea>
		        </div>
		        <div>
		            <button id="echo" disabled="disabled">发送信息</button>
		        </div>
			</td>
		</tr>
	</table>
	
	<div id="console-container">
        <div id="console"/>
    </div>
</body>
</html>