function inputCheck() {
    var nameRegex = /^[가-힣]{2,}$/;
	var pwdRegex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{4,16}$/;
	var idRegex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{4,16}$/;
//	console.log("입력된 비밀번호:", document.regForm.pwd.value);
//	console.log("정규식 검사 결과:", pwdRegex.test(document.regForm.pwd.value));

	//이름 유효성 검사
	if (document.regForm.name.value == "") {
	    alert("이름을 입력해 주세요");
	    document.regForm.name.focus();
	    return false;
	}
	
    if (!nameRegex.test(document.regForm.name.value)) {
        alert("이름은 한글만 입력해야 하며 두 글자 이상이어야 합니다.");
        document.regForm.name.focus();
        return false;
    }

	
	//아이디 유효성 검사
    if (document.regForm.id.value == "") {
        alert("아이디를 입력해 주세요");
        document.regForm.id.focus();
        return false;
    }
	if (!idRegex.test(document.regForm.id.value))

		
		
	//이메일 유효성 검사
    if (document.regForm.email.value == "") {
        alert("이메일을 입력해 주세요");
        document.regForm.email.focus();
        return false;
    }
	
	
	
	//비밀번호 유효성 검사
	if (document.regForm.pwd.value == "") {
	    alert("비밀번호를 입력해 주세요");
	    document.regForm.pwd.focus();
	    return false;
	}
    if (!pwdRegex.test(document.regForm.pwd.value)) {
        alert("비밀번호는 4~16자의 영문자와 숫자를 포함해야 합니다.");
        document.regForm.pwd.focus();
        return false;
    }

	if (document.regForm.repwd.value == "") {
	    alert("비밀번호 재입력을 입력해 주세요");
	    document.regForm.repwd.focus();
	    return false;
	}
    if (document.regForm.pwd.value !== document.regForm.repwd.value) {
        alert("비밀번호가 일치하지 않습니다");
        document.regForm.repwd.focus();
        return false;
    }
	
	//이메일
	if (document.regForm.email.value == "") {
	    alert("이메일을 입력해 주세요");
	    document.regForm.email.focus();
	    return false;
	}
	
	//생년월일
	if (document.regForm.birth.value == "") {
	    alert("생년월일을 입력해 주세요");
	    document.regForm.birth.focus();
	    return false;
	}
	
	
	return true; 
    // 모든 검사를 통과했으면 제출
}
