// 스무스 스크롤

// $는 선택자
$('#navbar a, .btn').on('click', function (event) {

    if (this.hash !== '') {
        event.preventDefault();
        const hash = this.hash;

        $('html, body').animate(
            {
                scrollTop: $(hash).offset().top - 100 //위치
            },
            800 // 800은 속도
        );

    }

});

// 메뉴 백그라운드 투명하게
window.addEventListener('scroll', function()
{
    if(window.scrollY > 150) //Y축으로 150이상 스크롤 했을 때
    {
        // navbar를 투명하게 만듦
        document.querySelector('#navbar').style.opacity= 0.5;
    }
    else
    {
        document.querySelector('#navbar').style.opacity= 1;
    }
}
);
