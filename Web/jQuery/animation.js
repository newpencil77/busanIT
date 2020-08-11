// 페이드 효과

$('#btn1').click(function(){
    $('#box').fadeOut('fast');
})

$('#btn2').click(function(){
    $('#box').fadeIn(3000);
})

$('#btn3').click(function(){
    $('#box').fadeToggle(500);
})


// 슬라이드 효과

$('#btn4').click(function(){
    $('#box').slideUp(1000);
})

$('#btn5').click(function(){
    $('#box').slideDown(2000);
})

$('#btn6').click(function(){
    $('#box').slideToggle('fast');
})



// 애니메이션 이동
$('#btn7').click(function(){
    $('#box2').animate({
        left: 100,
        width: 300,
        opacity: '1',
        backgroundColor: 'black'
    });
})

$('#btn8').click(function(){
    $('#box2').animate({
        left:0,
        width: 100,
        opacity: '0.5'
    })
});

$('#btn9').click(function(){
    $('#box2').animate({
        left:200,
    })
    $('#box2').animate({
        top: 200,
    })
    $('#box2').animate({
        left:0,
    })
    $('#box2').animate({
        top:0,
    })
    
})
