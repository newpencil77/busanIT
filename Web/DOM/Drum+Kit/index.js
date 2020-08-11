//모든 버튼 선택
var drums = document.querySelectorAll('.drum');

var audioRoute = '';

for (i = 0; i < drums.length; i++) {
    drums[i].addEventListener('click', clickHandle);
    // drums[i].addEventListener('mouseleave', leaveBtn);
}

document.addEventListener('keypress', keyHandle);
// document.addEventListener('keyup', leaveKey)



//코드 리팩토링
function drumBit(element) {
    switch (element) {
        case 'w':
            // drums[0].style.color='white';
            audioRoute = "tom-1";
            break;

        case 'a':
            // drums[1].style.color='white';
            audioRoute = "tom-2";
            break;

        case 's':
            // drums[2].style.color='white';
            audioRoute = "tom-3";
            break;

        case 'd':
            // drums[3].style.color='white';
            audioRoute = "tom-4";
            break;

        case 'j':
            // drums[4].style.color='white';
            audioRoute = "snare";
            break;

        case 'k':
            // drums[5].style.color='white';
            audioRoute = "crash";
            break;

        case 'l':
            // drums[6].style.color='white';
            audioRoute = "kick-bass";
            break;

        default:
            return;
    }
    var audio = new Audio("sounds/" + audioRoute + ".mp3");
    audio.play();

    animationDrum(element);
}


function animationDrum(key) //key값이 넘어옴
{
    // 키값을 받아 해당 버튼 선택
    var el = document.querySelector('.'+key);
    el.classList.add('pressed'); //클래스 추가

    setTimeout(function(){
        el.classList.remove('pressed');
    }, 200);
}


function keyHandle(e) {
    // console.log('키눌러짐');
    // console.log(this); //#document
    // console.log(e.key);
    drumBit(e.key);
}


function clickHandle() {
    // console.log(this);
    // console.log(this.textContent); //event.currentTarget
    // console.log(event.target);
    drumBit(this.textContent);
}


// function leaveKey(e) 키를 뗐을 때 해당 drum클래스 요소의 색 바꾸기
// {
//     switch(e.key)
//     {
//         case 'w':
//             drums[0].style.color= '#DA0463';
//             break;

//         case 'a':
//             drums[1].style.color= '#DA0463';
//             break;

//         case 's':
//             drums[2].style.color= '#DA0463';
//             break;

//         case 'd':
//             drums[3].style.color= '#DA0463';
//             break;

//         case 'j':
//             drums[4].style.color= '#DA0463';
//             break;

//         case 'k':
//             drums[5].style.color= '#DA0463';
//             break;

//         case 'l':
//             drums[6].style.color= '#DA0463';
//             break;

//         default:
//             return;
//     }
// }

// function leaveBtn() {
//     this.style.color = '#DA0463';
// }

