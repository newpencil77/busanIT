var css = document.querySelector('h3');
var color1= document.querySelector('.color1');
var color2= document.querySelector('.color2');
var body= document.getElementById('gradient');

var direction = "to right";

//세미콜론 위치 주의
// body.style.background = "linear-gradient(to right, "+color1.value+" , "+ color2.value+")"; 


// input이벤트. 이 경우 색을 선택했을 때
color1.addEventListener('input', setGradient);

color2.addEventListener('input', setGradient);


// function setGradient() {
//     body.style.background = "linear-gradient(to right," + color1.value + "," + color2.value + ")";
//     css.textContent = body.style.background + ";";
// }

function setGradient() {
    body.style.background = "linear-gradient(" + direction + "," + color1.value + "," + color2.value + ")";
    css.textContent = body.style.background + ";";
}




var btnRtoL = document.querySelector('#RtoL');
var btnLtoR = document.querySelector('#LtoR');

btnRtoL.addEventListener('click', function(){
    direction = "to left";
    setGradient();
});

btnLtoR.addEventListener('click', function(){
    direction = "to right";
    setGradient();
});