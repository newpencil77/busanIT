// var btn = document.querySelector('button');

// // addEventListener
// btn.addEventListener('click', function(){  //익명함수 
//     console.log('클릭했음');
// })



var button = document.getElementById('enter');
var input = document.getElementById('userInput');
var ul = document.querySelector('ul');


// var inputvalue = input.value; //이건 왜 안 되지? 속성값까지는 못 가리키나


// 1. 이벤트리스너
button.addEventListener('click', function(){

    if(input.value!=="")
    {
        createListElement();
        // // console.log('클릭');
        // // 2. 새 태그 요소 만들기
        // var newList= document.createElement('li'); //아직 아무 곳에도 연결이 안 됨   
        // // 3. 태그 요소에 textnode(요소 노드 안에 있는 글자) 내용 넣기  about node
        // newList.appendChild(document.createTextNode(input.value)); //newList로 새 태그요소 li를 생성하면서, createTextNode로 텍스트요소 추가 
        // ul.appendChild(newList); //새로 만든 태그 요소를 document.querySeeldt 연결 
        // input.value='';
    }

})


input.addEventListener('keypress', function(event){ //4. 어떤 키가 눌려졌는지 확인해야함. 키코드
    
    // console.log(event.keyCode);

    if((input.value!=="") && event.keyCode===13)
    {
            createListElement();
    }

    

})

//리팩토링. 중복되는 코드를 함수로 만들었음
function createListElement() {
    var newList = document.createElement('li');
    newList.appendChild(document.createTextNode(input.value));
    ul.appendChild(newList);
    input.value = '';
}


var btnDel = document.querySelector('#delete');
var list = document.querySelector('li');
var lists = document.querySelectorAll('li');

btnDel.addEventListener('click', function(){
    
    list.parentElement.removeChild(lists[lists.length-1]);
    lists[lists.length-1].remove();

})