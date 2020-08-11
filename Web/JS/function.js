// 내장 함수
// alert(), prompt(), confirm()

// var name = prompt('이름을 입력하세요');
// console.log("당신의 이름은 " + name + "입니다.");

// var go = confirm('계속 진행하시겠습니까?');

// if(name==="")
// {
//     console.log("공백입력");
// }
// else if(name===null)
// {
//     console.log("값이 없음");
// }
// if(go)
// {
//     console.log("계속 진행합니다.");
// }
// else
// {
//     console.log("진행을 멈춥니다.");
// }


//함수 만들기 (기본- 선언적 함수)
function printTen() //매개변수도 없고 리턴값도 없음
{
    console.log(10);
}

printTen();

// x를 입력받아 return x+10
function plusTen(x)
{
    return x+10;
}

function addNum(x,y)
{
    return x + y;
}

function remainLife(age)
{
    // let 으로 써도 됨. 함수 내에서만 쓸 거니까.
    var month= (90-age)*12;
    var week= (90-age)*52;
    var day= (90-age)*365;
    
    // console.log로만 해도 출력은 잘 됨
    return console.log(day + "일, " + week + "주, " + month +"달 남았습니다.");
}

// 익명함수 function(){}
// 이름은 따로없음. 변수에 할당함.

var plusTen2= function(x)
{
    return x+10;
}
// plusTen2가 함수가 됨
// 왜 굳이 익명으로 쓰지?

// 굳이 함수의 재사용이 필요 없을 때 이름을 줄이기 위해서?

plusTen2(); //익명함수 호출
var plus3 = plusTen2 //함수의 복사
console.log(plusTen2(10));



// 콜백함수: 함수를 매개변수로 삼음.
// 매개변수가 있는 함수는 매개변수로 못 넣나?
function myFunc(x)
{
    // console.log(x+"의 타입은 " + typeof x); 여기서 맨 앞의 x에서도 함수가 실행됨.
    console.log(typeof x);
    x();
}

function myCall()
{
    console.log('myCall이 호출');
}


// 예제2

var question = "동의하세요?";
function ask(question, yes, no) //매개변수의 이름과
{
    if (confirm(question)) yes()
    else no();
}

function agree() //함수의 이름은 달라도 됨. 상관 없음.
{
    alert("동의했습니다.");
}

function cancle()
{
    alert("취소했습니다.");
}



// 예제 3-1

function add(x, y)
{
    return x+y;
}

function multiply(x, y)
{
    return x*y;
}

//예제3-2

function calculrator(x, y, operator)
{
    return operator(x, y);
}


//예제3-3
function subtract(x,y)
{
    return x-y;
}

function divide(x,y)
{
    if(y!= 0)
    {
        return x/y;
    }
    else
    {
        console.log("0으로 나눌 수 없습니다.");
    }
}


// 타이머 함수. 내장함수임
// 특정 시간에 특정한 함수를 실행할 수 있게 하는 함수. 함수와 시간을 매개변수로 이용
// 단위는 millisecond로 받음. 1000millisecond = 1초

function seconds()
{
    alert("3초 간격");
}

// 일정 시간 후에 함수 실행
// setTimeout(seconds, 3000); //콜백함수 이용. 매개변수로 seconds()가 들어감

// 일정 간격으로 함수를 반복해서 실행
var intervalID= setInterval(seconds, 3000);

// 일정 간격으로 함수를 반복해서 실행하는 것을 중지
// clearInterval(id) 함수를 변수에 할당하고 id에 변수명을 넣어주면 됨
// clearInterval(intervalID);

setTimeout(function(){ //함수에 이름이 없어서 익명함수를 써줌
    clearInterval(intervalID);   
}, 5000);

// 타이머함수는 자바스크립트 코드블록이 모두 실행된 후에서야 실행이됨.
alert('1'); //1
setTimeout(function(){ //3 모두 실행되고 나서야 실행됨
    alert('2');
}, 0);
alert('3');  //2