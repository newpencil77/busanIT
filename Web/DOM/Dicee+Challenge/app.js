var img1 = document.querySelector('.img1');
var img2 = document.querySelector('.img2');
var min= 1; // 최소
var max= 6; // 최대
var randomNumber1 = getRandomInt(min, max);
var randomNumber2 = getRandomInt(min, max);
var heading1 = document.querySelector('h1');

// Math.random()은 0이상 1미만의 난수를 발생시킴 
function getRandomInt(min, max) //랜덤함수
{
    return Math.floor(Math.random()* (max - min + 1) + min); //최댓값, 최솟값 포함. 
}


//주사위 이미지 랜덤
img1.setAttribute('src','images/dice'+ randomNumber1+'.png');
img2.setAttribute('src','images/dice'+ randomNumber2+'.png');


//누가 이겼는지 체크
if(randomNumber1>randomNumber2)
{
    heading1.textContent= '🚩player1 Wins!';
}

else if(randomNumber1===randomNumber2)
{
    heading1.textContent= 'Draw!';
}

else
{
    heading1.textContent= 'player2 Wins!🚩';
}


