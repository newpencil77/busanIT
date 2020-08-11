// alert("하이!");

// console.log('콘솔창로그'); //콘솔창에 로그 띄우기? 
// console.error('에러메시지'); //강제적으로 에러메시지 띄우기
// console.warn('경고메시지');//경고메시지 띄우기

// 자바스크립트 자료형

// 변수선언은 var 
// 따로 자료형을 지정하진 않음. 입력되는 값에 따라 자료형이 결정됨.
// var name= '펭수';
// var age= 30;
// var isReal= false;
// var password; //변수 선언했지만 아무런 값이 없음-> undefined


// 숫자형 사칙연산 +, -, *, /, %
// Math 라이브러리를 사용해 좀 더 복잡한 연산 가능



// 문자형(String)
// 따옴표('' or "" )사이에 있으면 문자 자료형.



//변수 var와 let
// var는 전역변수 비슷, let은 지역변수 비슷
// 재선언 가능


// if(name=='펭수'){
//     let name2 = '행수'; //let은 코드 블록 내에서만 사용 가능함. 해당 중괄호 안. 
//     var name3 = '양수'; //var는 괄호 밖에서도 사용 가능함.
// }


// const 상수
// 값을 바꿀 수도, 다시 선언할 수도 없음.
// const number = 7;


//boolean 참과 거짓(true or false)
// console.log(1==2); //false
// console.log(1==1); //true
// console.log('펭수'=='펭수'); //true
// console.log('펭수'== '헹수'); //false


// 조건문
// if문
// if(true)
// {
//     console.log('결과:참'); //이것만 실행됨
// }

// if(false)
// {
//     console.log('결과: 거짓');
// }


// // if else문
// if(1>2)
// {
//     console.log('1');
// }
// else
// {
//     console.log('2');
// }

// else if else
// else if는 하나가 true면 밑의 것들은 실행이 안 됨

// if(false)
// {
//     alert(1);
// }
// else if(true)
// {
//     alert(2); //이것만 실행됨
// }
// else if(ture)
// {
//     alert(3);
// }
// else
// {
//     alert(4);
// }


// 입력받기 prompt함수.
// 값을 입력받고 해당 값을 리턴함.

// var id;
// id = prompt('아이디 입력:');
// if(id=='busanit')
// {
//     console.log('아이디 일치');
//     alert('아이디 일치');
// }
// else
// {
//     console.log('아이디 불일치');
// }


//예제

// prompt에서 입력되는 값은 기본적으로 문자인가? // 맞음. prompt()는 문자열을 입력할 때 사용함.
// 비교시 === 같을 때, 같지 않을 때 !==
// ===는 ==보다 정밀? 어떤 의미에서지? ===는 자료형까지 비교함

// var id2;
// var password;
// id2 = prompt('아이디를 입력해 주세요');

// if(id2=='pusanit')
// {
//     password= prompt('비밀번호를 입력해주세요');
//     if(password==502)
//     {
//         alert('인증에 성공했습니다');
//     }
//     else
//     {
//         alert('인증에 실패했습니다');
//     }
// }
// else
// {
//     alert('인증에 실패했습니다.');
// }



// var id = prompt('아이디를 입력해주세요');
// var pw = prompt('비밀번호를 입력해주세요');

// if((id === 'pusanit' || id === 'busanit' || id ==='fusanit') && (pw === '502')) 
// // ==='502'는 true   // === 502로 하면 false임 == 502는 true
// {
//     alert('인증에 성공했습니다');
// }
// else
// {
//     alert('인증에 실패했습니다');
// }


// 예제

// for(i=1; i<=100; i++)
// {
//     if(i%3==0 && i%5==0)  //i%15==0
//     {
//         console.log('삼삼오오');
//     }
//     else if(i%3==0)
//     {
//         console.log('삼삼');
//     }
//     else if(i%5==0)
//     {
//         console.log('오오');
//     }
//     else
//     {
//         console.log(i);
//     }
// }


//배열
var 배열 = []; //배열 선언
var fruits = ['사과', '오렌지', '포도']; //배열 선언과 초기화
console.log('배열의 길이는 '+ fruits.length + '입니다');

// 배열의 접근 방법:  배열[인덱스]

// 아이템을 배열 끝에 추가: push(아이템)
fruits.push('복숭아');
console.log('배열의 길이는 '+ fruits.length + '입니다');

//배열 끝에 있는 아이템 빼기: pop()
console.log("pop()을 사용합니다");
console.log(fruits.pop());
console.log('배열의 길이는 '+ fruits.length + '입니다');