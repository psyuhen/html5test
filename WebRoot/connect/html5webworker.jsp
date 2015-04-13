<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Web Worker</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.7.1.min.js"></script>
</head>
<body>
	<input type="text" id="a">
	<select id="oper">
		<option value="+">+</option>
		<option value="*">*</option>
	</select>
	<input type="text" id="b">
	<input type="button" id="equal" value="=">
	<input type="text" id="result">
	<br/>
	<input type="button" id="killworker" value="killworker">
	
	<script type="text/javascript">
		var worker = new Worker('js/html5webworker.js');
		$("#equal").bind("click",function(){
			var a = $("#a").val();
			var b = $("#b").val();
			var oper = $("#oper").val();
			worker.postMessage({
				"a":parseFloat(a),
				"b":parseFloat(b),
				"oper":oper,
			});
		});
		$("#killworker").bind("click",function(){
			if(worker != null){
				worker.terminate();
			}
		});
		worker.onmessage = function(e) {
			$("#result").val(e.data.result);
		};
	</script>
</body>
</html>