<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script type="text/javascript">
	function inputCheck(){
		if(email.value==""){
			alert("이메일을 입력해 주세요.");
			email.focus();
			return;
		}
		if(nick_name.value==""){
			alert("이름을 입력해 주세요.");
			nick_name.focus();
			return;
		}
		if(phone_no.value==""){
			alert("전화번호을 입력해 주세요.");
			phone_no.focus();
			return;
		}
		if(birth.value==""){
			alert("생년월일을 입력해 주세요.");
			birth.focus();
			return;
		}
		if(password.value==""){
			alert("비밀번호를 입력해 주세요.");
			password.focus();
			return;
		}
		if(passwordcheck.value==""){
			alert("비밀번호를 확인해 주세요");
			passwordcheck.focus();
			return;
		}
		if(password.value != passwordcheck.value){
			alert("비밀번호가 일치하지 않습니다.");
			passwordcheck.value="";
			passwordcheck.focus();
			return;
		}
		if(address.value==""){
			alert("주소을 입력해 주세요.");
			address.focus();
			return;
		}
		
		// 이메일 검사
	    var str=email.value;	   
	    var atPos = str.indexOf('@');
	    var atLastPos = str.lastIndexOf('@');
	    var dotPos = str.indexOf('.'); 
	    var spacePos = str.indexOf(' ');
	    var commaPos = str.indexOf(',');
	    var eMailSize = str.length;
	    if (atPos > 1 && atPos == atLastPos && 
		   dotPos > 3 && spacePos == -1 && commaPos == -1 
		   && atPos + 1 < dotPos && dotPos + 1 < eMailSize);
	    else {
	          alert('E-mail주소 형식이 잘못되었습니다.\n\r다시 입력해 주세요!');
		      email.focus();
			  return;
	    }

		// 생년월일 유효성 체크
		 var year = Number(dateStr.substr(0,4)); 
	     var month = Number(dateStr.substr(4,2));
	     var day = Number(dateStr.substr(6,2));
	     var today = new Date(); // 날자 변수 선언
	     var yearNow = today.getFullYear();
	     var adultYear = yearNow-20;
	 
	 
	     if (year < 1900 || year > adultYear){
	          alert(adultYear+"년생 이전 출생자만 등록 가능합니다.");
	          return false;
	     }
	     if (month < 1 || month > 12) { 
	          alert("1월부터 12월까지 입력 가능합니다.");
	          return false;
	     }
	    if (day < 1 || day > 31) {
	          alert("1일부터 31일까지 입력가능합니다.");
	          return false;
	     }
	     if ((month==4 || month==6 || month==9 || month==11) && day==31) {
	          alert(month+"월은 31일이 존재하지 않습니다.");
	          return false;
	     }
	     if (month == 2) {
	          var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
	          if (day>29 || (day==29 && !isleap)) {
	               alert(year + "년 2월은  " + day + "일이 없습니다.");
	               return false;
	          }
	     }
	     return true;

		submit();
	}

	function win_close(){
		self.close();
	}
	</script>
</head>
<body>
</body>
</html>