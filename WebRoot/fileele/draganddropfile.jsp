<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Drag and Drop File</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.7.1.min.js"></script>
<style type="text/css">
#foobar {
	background-color: yellow;
	width: 100px;
	height: 100px;
	cursor: move;
}

#catcher {
	background-color: blue;
	width: 150px;
	height: 150px;
	padding: 5px;
	margin-bottom: 5px;
}
</style>
</head>
<body>
	<div id="catcher">...</div>
	
<script type="text/javascript">
	$("#catcher").bind({
		"dragenter":function(event){
			$(this).css("border","3px solid red");
		},
		"dragleave":function(event){
			$(this).css("border","");
		},
		"dragover":function(event){
			if (event.preventDefault) {
				event.preventDefault();
			}
			return false;
		},
		"drop":function(event){
			if (event.preventDefault) {
				event.preventDefault();
			}
			if (event.stopPropagation) {
				event.stopPropagation();
			}
			$(this).css("border","");
			
			//获取文件列表
			var fileList = event.originalEvent.dataTransfer.files;
			
			addImgFile(fileList[0]);
			return false;
		}
	});
	function addImgFile(file){
		var fileReaderSupport = typeof FileReader != "undefined";
		if(!fileReaderSupport){
			alert("浏览器不支持FileReader API");
			return;
		}
		var reader = new FileReader();
		reader.onload = function(event){
			var fileContents = event.target.result;
			var img = $("<img>");
			img.attr({
				"src":fileContents,
				"width":"300px",
				"height":"300px"
			});
			$("body").append(img);
		};
		reader.readAsDataURL(file);
	}
</script>
</body>
</html>