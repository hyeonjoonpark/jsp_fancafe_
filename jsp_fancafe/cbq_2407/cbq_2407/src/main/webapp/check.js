function checking() {
	if(frm.student_number.value.length == 0) {
		alert("학번이 입력되지 않았습니다");
		frm.student_number.focus();
		return false;
	}
	
	 else if(frm.student_name.value.length == 0) {
		alert("이름이 입력되지 않았습니다");
		frm.student_name.focus();
		return false;
	}
	
	if(frm.email.value.length == 0) {
		alert("이메일이 입력되지 않았습니다");
		frm.email.focus();
		return false;
	}
	
	if(frm.fans_grade.value.length == 0) {
		alert("팬 등급이 입력되지 않았습니다");
		frm.fans_grade.focus();
		return false;
	}
	
	if(frm.income_date.value.length == 0) {
		alert("가입날짜가 입력되지 않았습니다");
		frm.income_date.focus();
		return false;
	}
	
	else {
		alert("정보를 입력합니다.")
		frm.submit();
		return true;
	}
	
	alert("등록이 완료되었습니다");
	return true;
}

function counting(cnt) {
	frm.cnt.value = cnt+1;
}