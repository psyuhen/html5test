/**
 * WebSocket Javascript 
 * author:ps
 */

var WebSocketEcho = function() {
	var $this = this;

	this.websocket = null;

	//初始化
	this.init = function() {
		$("#btnconn").bind("click", function() {
			$this.connect2WebSocket();
		});
		$("#btndisconn").bind("click", function() {
			$this.disconnect();
		});
		$("#echo").bind("click", function() {
			$this.sendMsg();
		});
	};

	//连接WebSocket
	this.connect2WebSocket = function() {
		var wsurl = $("#address").val();
		
		if(wsurl == ""){
			alert('请输入WebSocket地址！');
			return;
		}

		if ("WebSocket" in window) {
			$this.websocket = new WebSocket(wsurl);
		} else if ("MozWebSocket" in window) {
			$this.websocket = new MozWebSocket(wsurl);
		} else {
			alert('浏览器不支持WebSocket');
			return;
		}
		
		$this.websocket.onopen = function () {
			$("#btnconn").attr("disabled",true);
            $("#btndisconn").attr("disabled",false);
            $("#echo").attr("disabled",false);
            $this.log('日志: 已连接到WebSocket.');
        };
        
        $this.websocket.onmessage = function (event) {
        	console.log('接收: ' + event.data);
        	$this.log('接收: ' + event.data);
        };
        
        $this.websocket.onclose = function (event) {
            $("#btnconn").attr("disabled",false);
            $("#btndisconn").attr("disabled",true);
            $("#echo").attr("disabled",true);
            $this.log('日志: WebSocket连接已关闭, Code: ' + event.code + (event.reason == "" ? "" : ", Reason: " + event.reason));
        };
	};
	
	//关闭WebSocket
	this.disconnect = function(){
		if($this.websocket != null){
			$this.websocket.close();
			$this.websocket = null;
		}
	};
	
	//发送信息到WebSocket
	this.sendMsg = function(){
		if ($this.websocket != null) {
            var message = $("#message").val();
            $this.log('发送: ' + message);
            $this.websocket.send(message);
        } else {
            alert('WebSocket 连接不可用，请重新连接.');
        }
	};
	
	//显示信息
	this.log = function(msg){
		window.console.log(msg);
		var console = document.getElementById('console');
		var console = $("#console");
		var p = $("<p style='break-word'></p>")
		p.html(msg);
		
		console.append(p);
		
		while(console.children().size() > 25){
			console.children().get(0).remove();
		}
		
		console.attr("scrollTop",console.attr("scrollHeight"));
	};
};

var webSocketEcho = new WebSocketEcho();
$(document).ready(function(){
	webSocketEcho.init();
});
