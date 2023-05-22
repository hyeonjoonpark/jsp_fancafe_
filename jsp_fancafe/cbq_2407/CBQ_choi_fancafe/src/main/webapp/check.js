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
}

function counting(cnt) {
	alert(cnt);
	frm.cnt.value = cnt+1;
	frm.cnt.value = 5;
}
function uploading() {
	alert('uploading');
	if(frm2.schedule_id.value.length == 0) {
		alert("팬미팅 번호가 입력되지 않았습니다");
		frm2.schedule_id.focus();
		return false;
	}
	
	 else if(frm2.title.value.length == 0) {
		alert("제목이 입력되지 않았습니다");
		frm2.title.focus();
		return false;
	}
	
	if(frm2.detail.value.length == 0) {
		alert("내용이 입력되지 않았습니다");
		frm2.detail.focus();
		return false;
	}
	
	if(frm2.place.value.length == 0) {
		alert("장소가 입력되지 않았습니다");
		frm2.place.focus();
		return false;
	}
	
	if(frm2.time.value.length == 0) {
		alert("시간이 입력되지 않았습니다");
		frm2.time.focus();
		return false;
	}
	
	if(frm2.media_id.value.length == 0) {
		alert("방송사코드 입력되지 않았습니다");
		frm2.media_id.focus();
		return false;
	}
	
	else {
		alert("정보를 입력합니다.")
		frm2.submit();
		return true;
	}
	
	
}