/* clock.js */ 
 setTimeout(function () { 
    document.getElementById('clock').value = new Date(); 
 }, 1000);

/* Application cache*/
 if(window.applicationCache.status == window.applicationCache.UPDATEREADY){
 	window.applicationCache.update();
 }