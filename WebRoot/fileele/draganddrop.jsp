<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Drag and Drop</title>
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
	<div id="foobar" draggable="true">...</div>
	
<script type="text/javascript">
	$("#foobar").bind({
		"dragstart":function(event){
			$(this).css("border","3px dotted #000");
			
			event.originalEvent.dataTransfer.effectAllowed = "move";
			event.originalEvent.dataTransfer.setData("Text", this.id);
		},
		"dragend":function(event){
			$(this).css("border","");
		}
	});
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
			var id = event.originalEvent.dataTransfer.getData("Text");
			var foobar = $("#"+id);
			$(this).append(foobar);
			
			return false;
		}
	});
</script>
</body>
</html>