// css 메서드
$('p.para1').css('color', 'red');


// 클래스 추가/제거
$('p.para2').addClass('myClass'); //myClass추가
$('p.para2').removeClass('myClass'); //myClass추가

$('#btn1').click(function()
{
    $('p.para2').toggleClass('myClass'); //myClass추가
})

// 태그의 내용(text) 및 html 수정
$('#myDiv').text("내용입력")
$('#myDiv').html("<h3>내용입력</h3>")


//선택 태그 안에 새 태그를 추가하는 방법
$('ul').append('<li>append 뒤에 추가 아이템</li>')
$('ul').prepend('<li>prepend 앞에 추가 아이템</li>')

// 순서바꿈
$('.para1').appendTo('.para2'); //.para2 다음으로
$('.para1').prependTo('.para2'); //.para2 전으로

$('ul').before("<h4>이전 아이템</h4>")
$('ul').after("<h4>이후 아이템</h4>")

// 제거 remove()
$('h4').remove()
// $('ul').remove()  // remove()한건 다시 못 쓰나?


// 속성 추가 및 제거 attr / removeAttr
$('a').attr('target', '_blanck');
$('a').attr('href', 'http://www.naver.com');
$('a').removeAttr('target');


// 입력창에 입력 내용을 리스트로 추가
$('#newItem').on('keyup', function(e){
    let code = e.which; //어떤 키

    if(code ==13)
    {
        $('ul').append('<li>'+e.target.value+'</li>');
        $('#newItem').val("");
    }    
})



