// // 제이쿼리의 선택자 $
// // $("선택자")


// // $('h1').hide(); //hide() 안 보이게
// // document.querySelector('h1')

// // document.querySelector('h1').style.display



// // $('h1#heading1').hide(); //h1태그 중 id heading1
// // $('h1.heading2').hide();


// //css()메서드. 매개변수가 하나일 때 해당 값을 리턴
// //매개변수 2개일때, 2번째 값을 매개변수 1에 입력
// console.log($('p span').css('color'));
// $('p span').css('color', 'red');

// $('p span').css('background-color', 'blue');

// // 리스트 아이템들

// $('ul#list li:first').css('color','red');
// $('ul#list li:last').css('color','blue');
// $('ul#list li:nth-child(3)').css('color','green');
// $('ul#list li:even').css('color','yellowgreen');
// $('ul#list li:odd').css('color','pink');


// //type 선택시 : 콜론 사용

// $(':button').hide();

// //속성 선택시 [] 대괄호 사용
// $('[href]').css('color','red');
// $('[href="https://www.naver.com"]').css('color','blue');

// 전체선택
$('*').hide();