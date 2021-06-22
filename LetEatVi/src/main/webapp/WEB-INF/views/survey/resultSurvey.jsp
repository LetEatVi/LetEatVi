<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/favicon.ico">
<title>Survey</title>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
	integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/resultSurvey.css">

<script src="https://kit.fontawesome.com/2d323a629b.js"
	crossorigin="anonymous"></script>

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
	<style>
	
.bmi-wrap h1{
  text-align: center;
  font-family: sans-serif;
  color: #0182D8;
  font-size: 36px;
  margin-top: 80px;
}

.bmi-wrap h2{
  text-align: center;
  margin-bottom: 5px;
  font-family: sans-serif;
  font-size: 20px;
}

.bmi-wrap h3{
  text-align: center;
  margin-top: 0px;
  font-family: "VT323";
  font-size: 32px;
  color: gray;
  margin-bottom: 5px;
}

.bmi-wrap h4{
  font-family: sans-serif;
  margin-bottom: 5px;
  margin-top: 85px;
  font-size: 20px;
  color: #0182D8;
}
#bmi-measure{
	display: flow-root;
 	margin-top: -80px;
 }
.bmi-wrap #scale_main{
  background-color: #FFFFFF;
  width: 600px;
  min-height: 650px;
  margin: 0 auto;
  margin-top: 20px;
  border-radius: 20px;
  box-shadow: -1px 3px 15px #888888;
}

.bmi-wrap #scale_display{
  background-color: #DEE0E5;
  width: 60%;
  height: 100px;
  margin-left: 20%;
  margin-top: 50px;
  border-radius: 50px 50px 0 0;
  float: left;
  box-shadow: 0px -1px 2px #888888;
}

.bmi-wrap #needle{
  background-color: #E22A2A;
  width: 3px;
  height: 47px;
  margin-left: 50%;
  box-shadow: 0px 3px 15px #888888;
}

.bmi-wrap #needle_bottom{
  background-color: #E22A2A;
  width: 20px;
  height: 12px;
  margin-left: 47.5%;
  border-radius: 100px 100px 0px 0px;
  box-shadow: 0px -1px 7px #888888;
}

.bmi-wrap .measurement{
  width: 40%;
  float: left;
  margin-left: 10%;
  
}

.bmi-wrap .input{
  width: 45%;
  font-size: 24px;
  vertical-align: bottom;
  border-color: #DEE0E5;
  border-style: solid;
  font-family: sans-serif;
}

.bmi-wrap .unit {
  font-family: sans-serif;
  font-weight: 700;
  font-size: 20px;
}

.bmi-wrap #calculate {
  margin-left: 35%;
  margin-top: 100px;
  padding: 4px 40px;
  border-radius: 7px;
  font-size: 20px;
  box-shadow: 0px 0px;
  border-style: none;
  color: #FFFFFF;
  background-color: #16BE5F;
}

.bmi-wrap #calculate:hover{
  cursor: pointer;
}

.bmi-wrap #clear{
  margin-left: 35%;
  margin-top: 15px;
  padding: 4px 65px;
  border-radius: 7px;
  font-size: 20px;
  box-shadow: 0px 0px;
  border-style: none;
  color: #FFFFFF;
  background-color: #E22A2A;
}

.bmi-wrap #clear:hover{
  cursor: pointer;
}


.bmi-wrap .bmi-wrap .neutral{
  color: #000000;
}

.bmi-wrap .good{
  color: #16BE5F;
}

.bmi-wrap .bad{
  color: #E22A2A;
}
	
	</style>
</head>
<body>
	
	<section>
		<c:import url="../common/header.jsp"/>
		<div class="result-page">
			<div class="result-wrap">
	            <div class="result-head">
	                <h3><span id="namePlace"></span>님의 건강설문 결과표</h3>
	                <dl>
	                    <dt>성별</dt>
	                    <dd id="gender"></dd>
	                    <dt>연령대</dt>
	                    <dd id="age-bend"></dd>
	                    <dt>
	                        BMI
	                        <span>
	                        	<img class="bmi-info" src="${pageContext.request.contextPath}/resources/images/surveyImg/info.png" alt="info"/>
	                        </span>
	                    </dt>
	                    <dd id="bmi-value"></dd>
	                    <!-- (weight / (height * height)) * 10000 -->
	                </dl>
	                <div id="bmi-measure">
                    	<div class="bmi-wrap">
		                      <div id="scale_display">
						        <h2 id="range" class="neutral">#</h2>
						        <h3 id="bmi" >--.--</h3>
						        <div id="needle">
						        </div>
						        <div id="needle_bottom">
						        </div>
						      </div>
		                </div>
                    </div>
	                <div class="bmi-content">
	                    <h5 class="bmi-title">BMI ?</h5>
	                    <p class="bmi-concept">
	                        비만도를 나타내는 지수로 체중과 키의 관계를 이용하여 간접적으로 계산하여 평가를 합니다.
	                        <br>
	                        (몸무게를 키의 제곱으로 나눈 값)
	                        <br><br>- 저체중: 18.5 미만
	                        <br>- 정상 체중: 18.5 ~ 22.9
	                        <br>- 과체중: 23.0 ~ 24.9
	                        <br>- 비만: 25.0 ~ 29.9
	                        <br>- 고도비만: 30.0 이상
	                    </p>
	                </div>
	                <div class="advice-wrap">
	                    <img src="${pageContext.request.contextPath}/resources/images/surveyImg/healthy.png" alt="">
	                    <h4>함께 노력 해보아요!</h4>
	                    <div>★ : 고민, &nbsp; ★★ : 추천, &nbsp; ★★★ : 적극 추천, &nbsp; ★★★★ : 강력 권장</div>
	                    <br />
	                    <ul id="survey-answer-list"> </ul>
	                </div>
	                <p class="result-notice">* 상기 내용은 의료 진단 및 의사의 처방을 대신하지 않습니다.</p>
	            </div>
	        <nav class="recommend-wrap">
	            <h2>
	                추천영양성분
	                <em id=""></em>
	            </h2>
	            <ul class="recommend-item-wrap">
	                <li class="recommend-item">
	                    <div class="item-img">
	                        <img src="${pageContext.request.contextPath}/resources/images/surveyImg/male.png" alt="비타민B">
	                    </div>
	                    <div class="item-name">
	                        <p>비타민 B</p>
	                    </div>
	                </li>
	                <li class="recommend-item">
	                    <div class="item-img">
	                        <img src="${pageContext.request.contextPath}/resources/images/surveyImg/male.png" alt="프로바이오틱스">
	                    </div>
	                    <div class="item-name">
	                        <p>프로바이오틱스</p>
	                    </div>
	                </li>
	                <li class="recommend-item">
	                    <div class="item-img">
	                        <img src="${pageContext.request.contextPath}/resources/images/surveyImg/male.png" alt="비타민D">
	                    </div>
	                    <div class="item-name">
	                        <p>비타민D</p>
	                    </div>
	                </li>
	                <li class="recommend-item">
	                    <div class="item-img">
	                        <img src="${pageContext.request.contextPath}/resources/images/surveyImg/male.png" alt="비타민C">
	                    </div>
	                    <div class="item-name">
	                        <p>비타민 C</p>
	                    </div>
	                </li>
	                <li class="recommend-item">
	                    <div class="item-img">
	                        <img src="${pageContext.request.contextPath}/resources/images/surveyImg/male.png" alt="루테인">
	                    </div>
	                    <div class="item-name">
	                        <p>루테인</p>
	                    </div>
	                </li>
	                <li class="recommend-item">
	                    <div class="item-img">
	                        <img src="${pageContext.request.contextPath}/resources/images/surveyImg/male.png" alt="프로폴리스">
	                    </div>
	                    <div class="item-name">
	                        <p>프로폴리스</p>
	                    </div>
	                </li>
	            </ul>
	        </nav>
	            <div class="result-guide">
	                <div class="guide-wrap">
	                    <div class="custom-guide">
	                        <h3>Let's Eat Vitamin! 10 연령대에게 <b>[종합비타민]</b> 추천드립니다.</h3>
	                        <ul>
	                            <li># 소년기 또는 청년기에 해당됩니다.</li>
	                            <li># 성장하는 시기인 만큼, 기본에 충실해요!</li>
	                        </ul>
	                        <p>균형 잡힌 영양을 통한 건강한 성장이 가장 중요합니다
	                            <br>
	                            추천 음식 : 갑각류 달걀, 육류
	                        </p>
	                        <span>
	                            <img src="${pageContext.request.contextPath}/resources/images/surveyImg/lobster.png" alt="">
	                            <img src="${pageContext.request.contextPath}/resources/images/surveyImg/egg.png" alt="">
	                            <img src="${pageContext.request.contextPath}/resources/images/surveyImg/meat.png" alt="">
	                        </span>
	                    </div><div class="custom-guide">
	                        <h3>Let's Eat Vitamin! 20연령대에게 <b>[비타민B, 비타민D]</b> 추천드립니다.</h3>
	                        <ul>
	                            <li># 청년기에 해당됩니다.</li>
	                            <li># 혈기가 왕성할 시기인 만큼, 기본에 충실해요!</li>
	                        </ul>
	                        <p>학업, 취업 또는 직장 생활에 스트레스가 많고, 실내에 있는 시간이 많죠.
	                            <br>
	                            추천 음식 : 곡물류, 달걀, 과일(특히 키위, 토마토, 오렌지)
	                        </p>
	                        <span>
	                            <img src="${pageContext.request.contextPath}/resources/images/surveyImg/grains.png" alt="">
	                            <img src="${pageContext.request.contextPath}/resources/images/surveyImg/egg.png" alt="">
	                            <img src="${pageContext.request.contextPath}/resources/images/surveyImg/tomato.png" alt="">
	                        </span>
						</div><div class="custom-guide">
	
	                        <h3>Let's Eat Vitamin! 30 연령대에게 <b>[비타민B, 비타민D]</b> 추천드립니다.</h3>
	                        <ul>
	                            <li># 장년기에 해당됩니다.</li>
	                            <li># 체력과 운동능력이 쇠약해지는 만큼, 함께 노력해요!</li>
	                        </ul>
	                        <p>공부 또는 직장 생활에 스트레스가 많고, 실내에 있는 시간이 많죠.
	                            <br>
	                            추천 음식 : 곡물류, 달걀, 과일(특히 키위, 토마토, 오렌지)
	                        </p>
	                        <span>
	                            <img src="${pageContext.request.contextPath}/resources/images/surveyImg/grains.png" alt="">
	                            <img src="${pageContext.request.contextPath}/resources/images/surveyImg/egg.png" alt="">
	                            <img src="${pageContext.request.contextPath}/resources/images/surveyImg/tomato.png" alt="">
	                        </span>
	                        </div><div class="custom-guide">
	
	                        <h3>Let's Eat Vitamin! 40 연령대에게 <b>[항산화, 미네랄]</b> 추천드립니다.</h3>
	                        <ul>
	                            <li># 장년기에 해당됩니다.</li>
	                            <li># 체력과 운동능력이 쇠약해지는 만큼, 함께 노력해요!</li>
	                        </ul>
	                        <p> 노화가 진행되는 시기입니다. 지금 부터 예방하고, 개선하면 좋을 것 같아요.
	                            <br>
	                            추천 음식 : 콩, 색이 진한 채소 또는 과일
	                        </p>
	                        <span>
	                            <img src="${pageContext.request.contextPath}/resources/images/surveyImg/beans.png" alt="">
	                            <img src="${pageContext.request.contextPath}/resources/images/surveyImg/vegetable.png" alt="">
	                            <img src="${pageContext.request.contextPath}/resources/images/surveyImg/fruits.png" alt="">
	                        </span>
						</div><div class="custom-guide">
	
	                        <h3>Let's Eat Vitamin! 50 연령대이상 에게 <b>[오메가3]</b> 추천드립니다.</h3>
	                        <ul>
	                            <li># 중년기 또는 노년기에 해당됩니다.</li>
	                            <li># 체력과 운동능력이 쇠약해지는 만큼, 함께 노력하고 관리해요!</li>
	                        </ul>
	                        <p> 노화가 진행되고 있습니다. 영양제가 많이 필요한 시기입니다.
	                            <br>
	                            추천 음식 : 콩, 색이 진한 채소 또는 과일
	                        </p>
	                        <span>
	                            <img src="${pageContext.request.contextPath}/resources/images/surveyImg/beans.png" alt="">
	                            <img src="${pageContext.request.contextPath}/resources/images/surveyImg/vegetable.png" alt="">
	                            <img src="${pageContext.request.contextPath}/resources/images/surveyImg/fruits.png" alt="">
	                        </span>
	                    </div>
	                    <div class="vita-guide">
	                    	<h3>Let's Eat Vitamin의 추천 가이드</h3>
	                    	<br />
	                    	<br />
	                    
	                        <ul class="item-ul">
	                        <h3>비타민 B</h3>
	                            <li># 세포와 혈액 생성</li>
	                            <li># 활력에너지 충전</li>
	                        </ul>
	                    
	                        <ul class="item-ul">
	                        <h3>프로바이오틱스</h3>
	                            <li># 유산균 증식 및 유해균 억제</li>
	                            <li># 배변 활동 원할에 도움</li>
	                        </ul>
	                        
	                        <ul class="item-ul">
	                        <h3>칼슘, 마그네슘, 비타민D</h3>
	                            <li># 뼈 & 치아 & 관절 건강</li>
	                            <li># 신경과 근육 기능 유지</li>
	                        </ul>
	                        
	                        <ul class="item-ul">
	                        <h3>비타민 C</h3>
	                            <li># 피부/모발 건강, 피로회복</li>
	                            <li># 생기, 미백</li>
	                        </ul>
	                        
	                        <ul class="item-ul">
	                        <h3>루테인, 지아잔틴</h3>
	                            <li># 눈 건강, 눈 피로 회복</li>
	                            <li># 안구 개선, 황반색소밀도 유지</li>
	                        </ul>
	                        
	                        <ul class="item-ul">
	                        <h3>프로폴리스</h3>
	                            <li># 항산화, 정상적 면역기능</li>
	                            <li># 유해산소로부터 세포 보호</li>
	                        </ul>
	                    </div>
	                </div>
	            </div>
	        </div>
		</div>
		<div class="result-page">
			<div class="result-wrap">
	            <div class="result-head">
					<c:if test="${ empty member.email }">
						<input type="text" id="surveyEmail" value="test@example.com"/> &nbsp;&nbsp;
					</c:if><c:if test="${ !empty member.email }">
						<input type="hidden" id="surveyUserId" value="${ member.userId }"/>
						<input type="text" id="surveyEmail" value="${ member.email }"/> &nbsp;&nbsp;
						
					</c:if> &nbsp;&nbsp;
					<button type="button" id="saveBtn">저장하기</button> &nbsp;
					<button type="button" id="printBtn">인쇄하기</button>
				</div>
			</div>
		</div>
    	<c:import url="../common/footer.jsp"/>
	</section>
	
	<script>
	var q_count = Number(sessionStorage.getItem('q-count'));
	$('#printBtn').on('click', function(){
		print();	
	});
	
	$('#saveBtn').on('click', function(){
		if($('#surveyEmail').val() =='') {
			alert('이메일을 입력해 주세요!');
			$('#surveyEmail').focus();
		} else {
			
			var surveyData = {};
			surveyData['email'] = $('#surveyEmail').val();
			if($('#surveyUserId') != 0) {
				surveyData['userId'] = $('#surveyUserId').val();
			}
			
			for(var j in interestType){
				console.log(interestType[i]);
				if(interestType[i] == '2'){
					console.log($('.recommend-item-wrap>li')[i]);
					$($('.recommend-item-wrap>li')[i]).show();
					
					console.log($('.vita-guide>ul')[i]);
					$($('.vita-guide>ul')[i]).show();
				}
			}
		
			
		
			surveyData['userName'] = sessionStorage.getItem('userName');
			surveyData['age'] = sessionStorage.getItem('answer-age');
			surveyData['gender'] = sessionStorage.getItem('answer-gender');
			surveyData['height'] = Number(sessionStorage.getItem('height'));
			surveyData['weight'] = Number(sessionStorage.getItem('weight'));
			surveyData['interestList'] = sessionStorage.getItem('interestType');
			
			surveyData['answer_q1'] = sessionStorage.getItem('answer_q1');
			surveyData['answer_q2'] = sessionStorage.getItem('answer_q2');
			surveyData['answer_q3'] = sessionStorage.getItem('answer_q3');
			surveyData['answer_q4'] = sessionStorage.getItem('answer_q4');
			surveyData['answer_q5'] = sessionStorage.getItem('answer_q5');
			surveyData['answer_q6'] = sessionStorage.getItem('answer_q6');
			
			console.log(surveyData);
			
			$.ajax({
				url : 'saveSurvey.do',
				type : 'post',
				data : {
					data : JSON.stringify(surveyData)
				}, success : function(data){
					
					alert('저장이 완료되었습니다!');
					// location.href="/";					
				}, error : function(){
					alert('에러 발생!!!\n담당자에게 문의 하세요!');
				}
			});
		}
	});
	
	$(function(){
		$('.custom-guide').hide(0);
		var age_bend = parseInt(sessionStorage.getItem('answer-age')) / 10;
		$($('.custom-guide')[age_bend - 1] ).show();
		
		answerResult();
		
		$('#namePlace').text(sessionStorage.getItem('userName'));
		$('#age-bend').text(sessionStorage.getItem('answer-age'));
		$('.recommend-item-wrap>li').hide(0);
		$('.vita-guide>ul').hide(0);
		
		for(var i in interestType){
			console.log(interestType[i]);
			if(interestType[i] == '2'){
				console.log($('.recommend-item-wrap>li')[i]);
				$($('.recommend-item-wrap>li')[i]).show();
				
				console.log($('.vita-guide>ul')[i]);
				$($('.vita-guide>ul')[i]).show();
			}
		}
		
		var gen = sessionStorage.getItem('answer-gender');
		gen = (gen == 'm' ? '남성' : gen == 'f' ? '여성' : 'X');
		$('#gender').text(gen);
		var hei = Number(sessionStorage.getItem('height'));
		var wei = Number(sessionStorage.getItem('weight'));
		
		$('#bmi-value').text(Math.round((wei / (hei * hei)) * 100000) / 10);
		calculate(hei, wei);
		
		$('#q-count').text(++q_count);
		sessionStorage.setItem('q-count', q_count );
		
	})
	// 결과에 들어갈 내용
	// 2,0,0,2,2,0
	var interestType = sessionStorage.getItem('interestType').split(',');
	
	function answerResult(){
		for(var i in interestType){

			var type = sessionStorage.getItem('interestTitle').split(',')[i];
			
			if(interestType[i] == 2) {
				var answerText = '';
				// true, false, true, true
				// true (1) : OOO을 고려해보세요.
				// true (2) : OOO을 권장합니다.
				// true (3) : OOO을 추천합니다.
				// true (4) : OOO을 강력 추천합니다.
				var idx = Number(i) + Number(1);
				var answers = sessionStorage.getItem('answer_q' + idx).split(',');
				var answerCount = 0;
				
				for(var j = 0 ; j < answers.length ; j++){
					if(answers[j] == 'true'){
						answerCount++;
					}
				}

				switch(answerCount){
				case 1 :
					answerText = '타입의 고민이 있으시군요. 복용을 고려해보세요. ★';
					break;
				case 2 :
					answerText = '타입의 비타민 복용을 추천합니다. ★★';
					break;
				case 3 :
					answerText = '타입의 비타민 복용을 적극 추천합니다. ★★★';
					break;
				case 4 :
					answerText = '타입의 복용이 시급합니다! 강력 권장합니다. ★★★★';
					break;
				}

				var interestResult = "["+type +"]" + answerText;
				var $li = $('<li>').text(interestResult);
				
				$('#survey-answer-list').append($li);
			}
		}	
	}
	
	$("img.bmi-info, #bmi-measure").on('click',function(){
		  $(".bmi-content").slideToggle(300);
		});
	
	function calculate(height, weight) {
		  weight = parseInt(weight);
		  height = parseInt(height);
		  console.log("Height", height);
		  console.log("Weight", weight);
		  weight = weight * 703;
		  height = height*height;
		  var bmi = weight/height;
		  console.log("BMI: ", bmi);
		  document.getElementById('bmi').innerHTML = bmi.toPrecision(3);
		  
		  if(bmi < 18.5)
		    {
		      document.getElementById('range').innerHTML = "저체중";
		      document.getElementById('range').classList.remove("neutral");
		      document.getElementById('range').classList.remove("good");                 document.getElementById('range').classList.add("bad");
		    }
		  
		   if(bmi >= 18.5 && bmi < 25)
		    {
		      document.getElementById('range').innerHTML = "평균";
		      document.getElementById('range').classList.remove("neutral");
		      document.getElementById('range').classList.remove("bad");                   document.getElementById('range').classList.add("good");
		    }
		  
		   if(bmi >= 25 && bmi < 30)
		    {
		      document.getElementById('range').innerHTML = "과체중";
		      document.getElementById('range').classList.remove("neutral");
		      document.getElementById('range').classList.remove("good");                 document.getElementById('range').classList.add("bad");
		    }
		  
		   if(bmi > 30)
		    {
		      document.getElementById('range').innerHTML = "비만";
		      document.getElementById('range').classList.remove("neutral");
		      document.getElementById('range').classList.remove("good");                 document.getElementById('range').classList.add("bad");
		    }
		};

	</script>
	
</body>

</html>