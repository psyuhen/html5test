/**
 * html5webworker Javascript
 * author:ps
 */

function add(a,b){
	return a+b;
}

function multi(a,b){
	return a*b;
}

onmessage = function(event){
	
	switch(event.data.oper){
	case "+":
		var result = add(event.data.a,event.data.b);
		postMessage({"result" : result});
		break;
	case "*":
		var result = multi(event.data.a,event.data.b);
		postMessage({"result" : result});
		break;
	default:
		postMessage({"result" : "非法的操作符！"});	
	}
	
	/*var i = 1;
	var n = 1000*1000*1000;
	while (i < n) {
		if (i % 10000 === 0) {
			postMessage({"result" : i});
		}
		i++;
	}*/
};