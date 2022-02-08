$(document).ready(function(){
			//유효성 값 합이 0이면 일치 그외 값은 일치 하지 않는 부분이 있음
			
			var sum = 1;
			
			//이름 확인
			$("#m_name").blur(function(){
				var m_name = $("#m_name").val();
				var check = /^[가-힝a-zA-Z]{2,}$/;
					if(check.test(m_name)==false){
						$("#span_name").html("올바르지 않는 이름입니다.")
					}else{
						$("#span_name").empty();
					}
			});//name
			
			// 중복 및 유효성 검사(완료)
		$("#m_id").blur(function(){
						
		var m_id = $("#m_id").val();		
		
		if(m_id.length>=6 &&m_id.length<=20){//최소 글자수 이상 */
			
			//아이디 
			$.ajax({
				type: 'post',
				url: 'signUp.do?command=memberId',
				data : {m_id : m_id},
				success : function(result) {
					$("#span_id").html(result);
				
					
					},
				error : function(){
					console.log("실패");
					
				}
				
				});
		}else{
	 			$("#span_id").html("6글자 이상 입력해주세요");
	 			$('#span_id').css({
	 			    /*margin: "5px",
	 			    padding: "10px",*/
	 			    color: "red"
	 			});
	 		}		
		});//id
			
			//이메일 확인
			$("#m_email").blur(function(){
				    var m_email = document.getElementById("m_email").value;
				    var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
				     if(exptext.test(m_email)==false){
				        //이메일 형식이 알파벳+숫자@알파벳+숫자.알파벳+숫자 형식이 아닐경우         
				        
				    	$("#span_email").html("이 메일형식이 올바르지 않습니다.");
				        /* document.addjoin.m_email.focus(); */
				        /* return false; */
				    }else{
				    	
				    	$.ajax({
							type: 'post',
							url: 'signUp.do?command=memberEmail',
							data : {m_email : m_email},
							success : function(result) {
								$("#span_email").html(result);
								
								},
								error : function(){
								console.log("실패");
								}				
							});
				    	
				    	$("#span_email").empty();
				    }
				
		});//email
			
						
			//닉네임
			$("#m_nickname").blur(function(){
			
				var m_nickname = $("#m_nickname").val();
				if(m_nickname.length>=2){
					//db에서 중복 확인
					$.ajax({
						type: 'post',
						url: 'signUp.do?command=memberNickname',
						data : {m_nickname : m_nickname},
						success : function(result) {
							$("#span_nick").html(result);
							
							}				
						});
				
				}else{
				
					$("#span_nick").html("2글자 이상 입력해주세요");
				}
			});//nick name
			
			//버튼클릭 이벤트
		    $("#submit").click(function() {
		   
		        //폼데이터를 서버에 제출
		        document.form1.submit();
		    });
			
		    //비밀번호 검사
		    $("#m_pw").blur(function(){
		    	var m_pw = $("#m_pw").val();
		    	if(m_pw.length<=8){
		    		$("#pw_len").html("8글자 이상 입력 해주세요");
		    	}else{
		    		$("#pw_len").html("");
		    	}
		    });
		    
			//비밀번호 유효성 검사(완료?)
			$("#pw").blur(function(){
				var pw = $("#pw").val();
				var m_pw = $("#m_pw").val();
				
				if(pw.length>=8 && pw.length<=25){
					 if(m_pw==pw){
							
							$("#pw_ok").html("확인이 완료 되었습니다");
							$('#pw_ok').css({
				 			    color: "blue"
				 			});
						}else{
							$("#pw_ok").html("비밀번호가 일치 하지 않습니다");
							$('#pw_ok').css({
				 			    color: "red"
				 			});
						}
					 
				}
	 				
			});//비밀번호 끝
			
			/*
			 $(document.activeElement).focusout(function(){
			 btn = document.getElementById('submit');
					  btn.disabled = false;
			 

				
				if(sum == 0){
					 //버튼활성화

					  btn = document.getElementById('submit');
					  btn.disabled = false;
				}else{
						btn = document.getElementById('submit');
						btn.disabled = 'disabled';						 
				}
				
			});
			*/
			 
		});		
