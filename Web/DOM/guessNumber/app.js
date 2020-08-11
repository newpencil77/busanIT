// 상수로 태그 요소들 사용
const game = document.querySelector('#game');
const minNum = document.querySelector('.min-num');
const maxNum = document.querySelector('.max-num');
const guessBtn = document.querySelector('#guess-btn');
const guessInput = document.querySelector('#guess-input');
const message = document.querySelector('.message');

const hintNum= document.querySelector('#hintNum');

let min = 1;
let max = 300;
let winningNum = getRandomNum(min, max);
let guessLeft = 10; //기회는 3번, 깎일 값
let chance = 10; //전체 횟수
let choiceNum= [];




minNum.textContent = min;
maxNum.textContent = max;

// 최솟값과 최댓값을 포함해 랜덤 값 생성
function getRandomNum(min, max) {
    return Math.floor(Math.random() * (max - min + 1) + min);
}


// 메시지와 색을 입력 받아서 화면에 출력
function setMessage(msg, color) {
    message.style.color = color;
    message.textContent = msg;
}


//확인하기 버튼을 눌렀을 때 이벤트
guessBtn.addEventListener('click', clickHandle);

function clickHandle() {
    // 값을 입력받아서 숫자로 변환
    let guess = parseInt(guessInput.value); //input창의 value값은 기본적으로 String임. parseInt로 숫자로 바꿔줌
    // console.log(typeof guess);
    // console.log(isNaN(guess)); //true면 숫자가 아님

    if (isNaN(guess) || guess < min || guess > max) //숫자가 아니거나 min보다 작거나 max보다 큰 경우
    {
        setMessage(`숫자를 입력해주세요(${min}~ ${max})`, 'red');
        guessInput.value = '';
        guessInput.style.borderColor = 'red';
        return;
    }

    else if (guess === winningNum) {
        gameFinishWin(true,`${winningNum} 맞아요, YOU WIN!`);
    }

    // else
    // {
    //     guessLeft --;
    //     guessInput.style.borderColor = 'red';
    //     
    //     if(guessLeft===0)
    //     {
    //         gameFinishWin(false,`Game Over... 정답은 ${winningNum} 입니다`);
    //         return;
    //     }
    //     setMessage(`${guess}는 틀렸어요, ${guessLeft}번 남았습니다.`, 'red');
    // }


    else {
        guessLeft--;
        guessInput.style.borderColor = 'red';

        if (guessLeft === 0) {
            gameFinishWin(false,`Game Over... 정답은 ${winningNum} 입니다`);
            return;
        }

        else if (guess > winningNum) {
            setMessage(`${guess}는 틀렸어요, 답은 그보다 작습니다. ${guessLeft}번 남았습니다.`, 'red');
        }

        else {
            setMessage(`${guess}는 틀렸어요, 답은 그보다 큽니다. ${guessLeft}번 남았습니다.`, 'red');
        }
        
        ///
        guessInput.value= '';

        choiceNum[chance-guessLeft-1] = guess;
        hintNum.textContent= choiceNum.toString();
        
    }
}






// 리팩토링
function gameFinishWin(win, msg)
{
    let color;
    win === true ? color = 'green' : color = 'red' //true면 두번째, false면 세번째 실행

    guessInput.disabled = true; //입력 더이상 안 받음
    guessInput.style.borderColor = color;
    setMessage(msg, color);

    // 다시하기
    guessBtn.value = '다시 하기'; //버튼 글자 바꿈
    guessBtn.classList.add('play-again'); //클래스 추가

    game.addEventListener('mousedown', function(e){//위에 클릭 이벤트가 있어서 겹칠 수 있으니 mousedown을 씀
        if(e.target.className==='play-again')
        {
            window.location.reload(); //새로고침
        }
    }) 
}
