$('#btn1').click(function(){
    $('.para1').toggle(); //show() - hide() 번갈아가면서
})


// on 메서드는 이벤트를 연결
$('#btn2').on('mouseenter mouseleave', function(){
    $('.para1').toggle();
})

// $('#btn2').on('mouseleave', function(){
//     $('.para1').toggle();
// })



// 이벤트 객체 정보 출력
$('#btn2').click(function(e){
    // console.log(e);
    console.log(e.currentTarget.id);
    console.log(e.currentTarget.className);
})


// 
// $('#btn1').on('mousemove', function(e){
//     console.log('좌표: X: ' +e.clientX+ ' Y: '+ e.clientY);
// })

// $(document).on('mousemove', function(e){
//     $('#coords').text('좌표: X: ' +e.clientX+ ' Y: '+ e.clientY);
// })



// $('#btn1').click(clickBtn);

// function clickBtn()
// {
//     console.log('버튼을 클릭함')
// }




// focus 입력창 선택시
$('input').focus(function()
{
    $(this).css('background-color', 'pink');
})

// blur  입력창 해제시
$('input').blur(function()
{
    $(this).css('background-color', 'white');
})

// 키보드 눌렀다 뗐을 때
// $('input').keyup(function(e)
// {
//     // console.log("키를 입력함!");
//     console.log(e.target.value) //해당 값 콘솔로그에 출력
// })


$('#form').submit(function(e)
{
    e.preventDefault(); //원래 이벤트 제거
    let name = $('input#name').val();
    let email = $('input#email').val();
    let gender = $('select#gender').val();
    console.log(name+ " "+ email + " " + gender);
})
