function BrowserType() {  
      var userAgent = navigator.userAgent; //鍙栧緱娴忚鍣ㄧ殑userAgent瀛楃涓�  
      var isOpera = userAgent.indexOf("Opera") > -1; //鍒ゆ柇鏄惁Opera娴忚鍣�  
      var isIE = userAgent.indexOf("compatible") > -1 && userAgent.indexOf("MSIE") > -1 && !isOpera; //鍒ゆ柇鏄惁IE娴忚鍣�  
      var isEdge = userAgent.indexOf("Windows NT 6.1; Trident/7.0;") > -1 && !isIE; //鍒ゆ柇鏄惁IE鐨凟dge娴忚鍣�  
      var isFF = userAgent.indexOf("Firefox") > -1; //鍒ゆ柇鏄惁Firefox娴忚鍣�  
      var isSafari = userAgent.indexOf("Safari") > -1 && userAgent.indexOf("Chrome") == -1; //鍒ゆ柇鏄惁Safari娴忚鍣�  
      var isChrome = userAgent.indexOf("Chrome") > -1 && userAgent.indexOf("Safari") > -1; //鍒ゆ柇Chrome娴忚鍣�  
  
      if (isIE)   
      {  
           var reIE = new RegExp("MSIE (\\d+\\.\\d+);");  
           reIE.test(userAgent);  
           var fIEVersion = parseFloat(RegExp["$1"]);  
           if(fIEVersion == 7)  
           { return "IE7";}  
           else if(fIEVersion == 8)  
           { return "IE8";}  
           else if(fIEVersion == 9)  
           { return "IE9";}  
           else if(fIEVersion == 10)  
           { return "IE10";}  
           else if(fIEVersion == 11)  
           { return "IE11";}  
           else  
           { return "0"}//IE鐗堟湰杩囦綆  
       }//isIE end  
         
       if (isFF) {  return "FF";}  
       if (isOpera) {  return "Opera";}  
       if (isSafari) {  return "Safari";}  
       if (isChrome) { return "Chrome";}  
       if (isEdge) { return "Edge";}  
   }//myBrowser() end  
     
   //鍒ゆ柇鏄惁鏄疘E娴忚鍣�  
   function isIE()  
   {  
      var userAgent = navigator.userAgent; //鍙栧緱娴忚鍣ㄧ殑userAgent瀛楃涓�  
      var isIE = userAgent.indexOf("compatible") > -1 && userAgent.indexOf("MSIE") > -1 && !isOpera; //鍒ゆ柇鏄惁IE娴忚鍣�  
      if(isIE)  
      {  
          return "1";  
      }  
      else  
      {  
          return "-1";  
      }  
   }  
     
     
   //鍒ゆ柇鏄惁鏄疘E娴忚鍣紝鍖呮嫭Edge娴忚鍣�  
   function IEVersion()  
   {  
      var userAgent = navigator.userAgent; //鍙栧緱娴忚鍣ㄧ殑userAgent瀛楃涓�  
      var isOpera = userAgent.indexOf("Opera") > -1; //鍒ゆ柇鏄惁Opera娴忚鍣�
      var isIE = userAgent.indexOf("compatible") > -1 && userAgent.indexOf("MSIE") > -1 && !isOpera; //鍒ゆ柇鏄惁IE娴忚鍣�  
	  var isEdge = userAgent.indexOf("Windows NT 6.1; Trident/7.0;") > -1 && !isIE; //鍒ゆ柇鏄惁IE鐨凟dge娴忚鍣�  
      if(isIE)  
      {  
           var reIE = new RegExp("MSIE (\\d+\\.\\d+);");  
           reIE.test(userAgent);  
           var fIEVersion = parseFloat(RegExp["$1"]);  
           if(fIEVersion == 7)  
           { return "7";}  
           else if(fIEVersion == 8)  
           { return "8";}  
           else if(fIEVersion == 9)  
           { return "9";}  
           else if(fIEVersion == 10)  
           { return "10";}  
           else if(fIEVersion == 11)  
           { return "11";}  
           else  
           { return "0"}//IE鐗堟湰杩囦綆  
      }  else if(isEdge)  {  
    		return "Edge";  
	  }  else {  
          return "-1";//闈濱E  
      }  
   }  