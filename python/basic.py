#-*- coding: utf-8 -*- 

'''

x= 1
y= 2
z= 3

print(x)
print(y)
print(z)


# 예제3

x = 4
y = 3.14
z = "561"

print(type(x), type(y), type(z))



#예제
x = -10
if x*2 > x:
    print('크다.')
else:
    print('작거나 같다')


#if문
name = '리스'
if name == '앨리스':
    print('반가워요 ' + name)
print('종료')


#if else문
name = '밥'
if name == '앨리스':
    print('당신이 앨리스군요')
elif name== '밥':
    print('당신이 밥이군요')
else:
    print('누구신가요?') 

name = input('이름 입력: ')
if name=='':
    print('이름을 입력하지 않았군요')
else:
    print('당신의 이름은 '+ name+ '입니다')
    print('당신의 이름은', name+ '입니다')


while 반복문
count = 0
while count <3:
    print('횟수:', count)
    count += 1  #count = count+1

name =''
while name != '홍길동':
    print('이름을 입력하세요')
    name = input()
print('종료')


treeHit = 0
while treeHit<10:
    treeHit += 1
    print('나무를 %d번 찍었습니다' %treeHit) 
    if treeHit ==10:
        print('나무 넘어갑니다.')


continue  다시 조건으로 돌아감
break   반복문 끝내기
count = 0
while count<10:
    count += 1
    if count<4:
        continue
    if count ==8:
        break


for문
animals = ['땅다람쥐', '바다코끼리', '스컹크', '아나콘다', '코알라', '하이에나', '바다소']
for animal in animals:
    print(animal)

for ch in 'abcdefg':
    print(ch)

for i in [1,2,3,4,5]:
# for i in (1,2,3,4,5): #이것도 됨 튜플?
    print(i)

for n in range(3): 
    print(n)

for k in range(3, 7): #0~n-1
    print(k)


x = range(3)
for l in x
    print(l)


구구단 2단 출력
for i in range(1,10):
    print('{}x{}={}'.format(2, i , 2*i), end=" ") #format함수를 이용해 {}안에 값을 채워주고 있음
#print 매개변수인 end의 초깃값은 \n. 개행됨. end 값을 바꾸면 출력방식을 바꿀 수 있음


구구단 2단부터 9단까지 가로 한줄씩 출력
for i in range(2,10):
    for j in range(1,10):
        print('{}x{}={}'.format(i, j, i*j), end=" ")
    print()

'''


'''
a = "Life is too short, you need python"

if "wife" in a: print("wife")
elif "python" in a and "you" not in a: print("python")
elif "shirt" not in a: print("shirt") #이 부분이 실행됐으니
elif "need" in a: print("need") #이 부분은 실행되지x?
else: print("none")
'''


# #1부터 1000까지 자연수중 3의 배수의 합
# i = 1
# sum = 0
# while i<=1000:
#     if i%3 == 0:
#         sum += i
#     i += 1
# print(sum)

# #for문 1부터 1000까지 자연수중 3의 배수의 합
# sum = 0
# for i in range(1,1001):
#     if i%3==0:
#         sum +=i
#     i += 1
# print(sum)


'''
여러 줄 주석 
'''

# #삼각형 별 찍기
# i= 1
# while i <= 5:
#     print('*' * i)
#     i += 1

# for i in range(1,6):
#     print('*' * i)


# # 복잡하게 생각한 것임! 문자열 곱하는 걸 생각 못함
# # while로 삼각형 별찍기
# i = 1
# max = 5
# while (i<=max):
#     j = 1
#     while (j<=i):
#         print('*', end='')
#         j += 1
#     i += 1
#     print()


#count를 쓸 것 없이 len()을 사용하면 됐음
# A = [70, 60, 55, 75, 95, 90, 80, 80, 85, 100]

# sum= 0
# count = 0

# for i in A:
#     sum += i
#     count +=1
# print('A학급의 평균점수:', sum/count)



# #컴프리헨션, 리스트를 만드는 간결한 방법
# 홀수 = [n for n in range(1,101) if n%2 == 1]
# print(홀수)

#for문 사용해 리스트를 만든 경우
# 홀수 = [] 
# for n in range(1,11):
#     if n % 2 == 1:
#         홀수.append(n)
# print(홀수)


#외부 모듈
# import sys
# print('헬로우')
# sys.exit() #프로그램 종료
# print('월드!!') #실행 안 됨


#함수
# def hello():
#     print("하이!")
#     print("안녕")
#     print("니 하오!")

# hello()
# hello()
# hello()

#매개변수가 있는 함수
# def hello(name):
#     print('하이 ' + name)

# hello('길동')
# hello('펭수')


# def add10(num):
#     return num+10

# print(add10(1))
# print(add10(15))


# def is_odd(num):
#     if num%2==0:
#         print('짝수')
#     else :
#         print('홀수')

# is_odd(1)
# is_odd(2)


#가변 매개변수(매개변수의 갯수 지정x)
# def foo(*arg):  # *  매개변수가 몇개든 들어갈 수 있음
#     return sum(arg)/len(arg)

# print(foo(1,2,3,4))


#전역변수
# x = 10

# def foo():
#     print(x)  #전역변수 출력

# foo()
# print(x)


#지역변수. 함수 안에서만 사용 가능
# def foo():
#     x = 10
#     print(x)  #지역변수 출력

# foo()
# print(x)  #name 'x' is not defined


# def spam():
#     eggs = 99
#     bacon()
#     print(eggs)

# def bacon():
#     ham = 101
#     eggs = 0  #여기 있는 egg는 bacon()에서만 사용됨.

# spam()  #99



#에러처리 try/except

# def div10(num):
#     try:
#         return 10/num
#     except ZeroDivisionError: #에러 이름을 알고 있을 때
#     # except : 에러 이름을 잘 모를 때
#         print('에러: 0으로 나눌 수 없음')

        
# print(div10(2))
# print(div10(0)) #에러. 리턴값이 없어서 리턴이 None
# print(div10(5))


#리스트와 튜플
# myList = [1, 2, 3.14, 7.22, '안녕하세요']

# print(myList)

# myList2 = [3, 4, 1.332, 9.3, '반가워요', ['리스트', 111]]

# print(myList2)



# #딕셔너리(Dictionary):키와 값의 쌍으로 이루어진 컨테이너
# #딕셔너리는 키값으로 검색, 순서x (인덱스 없음)
# myCat= {'사이즈' : '소형', '색': '연한 갈색', '특기': '잠자기'}
# #키값으로 검색
# print(myCat['사이즈'])

# #key 값, value 값, items 함수

# print(list(myCat.keys()))
# print(list(myCat.values()))
# print( list(myCat.items()))

# #for문으로 key, value 값을 전체 출력
# for k in myCat.keys():
#     print(k)

# for k in myCat.values():
#     print(k)

# for k, v in myCat.items():
#     print(k, v)


# #get() 함수: 해당 값을 리턴, 없을 때(기본 = None)
# check = myCat.get('color', '없음') #키값이 없을 때 '없음'이 리턴
# print(check)


# count = {} #딕셔너리 카운트 생성
# for ch in '가나다라마바사가나다':
#     count.setdefault(ch,0) #ch를 count 딕셔너리에 넣고, 값이 없을 경우 value값을 0으로
#     count[ch] = count[ch] +1

# print(count)


#이스케이프 문자 \' \\ \n \t
#여러 줄 문자열 처리 : ''' or """

# #문자열 메소드
# spam = 'Hello World!'
# print(spam.upper()) #대문자
# print(spam.lower()) #대문자
# print(spam) #변화 없음


# print('hello world'.title()) #title(). 단어의 첫글자만 대문자로

# #문자 갯수 세기 count
# spam = '''안촉촉한 초코칩나라에 살던 안촉촉한 초코칩이 촉촉한 초코칩나라의 촉촉한 초코칩을 보고 촉촉한 초코칩이 되고싶어서 촉촉한 초코칩나라에 갔는데 촉촉한 초코칩나라의 문지기가 "넌 촉촉한 초코칩이 아니고 안촉촉한 초코칩이니까 안촉촉한 초코칩나라에서 살아"라고 해서 안촉촉한 초코칩은 촉촉한 초코칩이 되는 것을 포기하고 안촉촉한 눈물을 흘리며 안촉촉한 초코칩나라로 돌아갔다'''

# print(spam.count('초코칩'))


# #isalpha :알파벳, isalnum:알파벳 + 숫자, isdecimal: 정수, isspace:빈칸
# print('hello'.isalpha())
# print('hello123'.isalnum())
# print('123'.isdecimal())
# print('  '.isspace())


# #문자열 조인 join()

# print(','.join('가나다라'))
# print('fff'.join(['1','2','3','4']))
# print('-'.join(['2020', '05', '20']))


# #문자열 나누기 split() : 디폴트는 공백
# print('2020-05-20'.split('-'))
# print(spam.split())

# #strip(), lstrip(), rstrip() : 디폴트는 공백
# print( '      하이    '.strip())
# print( '      하이    '.lstrip())
# print( '      하이    '.rstrip())
# print('###하이###'.strip('#'))

# #문자열 바꾸기 replace
# a = "인생은 짧다."
# print(a.replace('인생은', '니 다리가'))
 

#  #%d 숫자
# number = 7
# print("나는 도시락 %d개를 먹었다." %3)
# print("나는 도시락 %d개를 먹었다." %number)
# print("나는 도시락 %s개를 먹었다." %'여러')
# print("나는 도시락 %d개를 %s 먹었다." %(7, '배터지게')) #여러개 일 때


# #포맷함수 format 이용
# print("나는 도시락 {}개를 먹었다.".format(3))
# print("나는 도시락 {}개를 먹었다.".format('여러'))
# print("나는 도시락 {}개를 먹었다.".format(1/2))
# print("나는 도시락 {0}개를 {1} 먹었다.".format(100, '열심히')) #순서지정


# #파일 생성하기
# f = open('fruits.txt', encoding='utf-8')
# content = f.read()
# f.close()
# print(content)
# print(content)
# # print(f.read()) #한번 밖에 안 읽힘. 커서가 마지막 부분에 남아있기 때문
# # print(f.read())  



#파일 with로 열기
# with open('fruits.txt', encoding = 'utf-8') as f:
#     content = f.read()
#     #코드블록이 끝나면 알아서 파일을 닫아줌

# print(content)


# #파일 쓰기 (없으면 생성)
# with open('vegi.txt', 'w', encoding='utf-8') as f:
#     f.write('무\n')
#     f.write('배추\n')
#     f.write('토마토\n')
#     f.write('브로콜리\n')

# #덧붙여 쓰기
# with open('vegi.txt', 'a', encoding='utf-8') as f:
#     f.write('무\n')
#     f.write('배추\n')
#     f.write('토마토\n')
#     f.write('브로콜리\n')


# with open('vegi.txt', 'a+', encoding='utf-8') as f:
#     f.write('붙여쓰기\n') #현재 커서가 제일 마지막에 있음
#     f.seek(0) #커서 첫번째 줄로 이동
#     content= f.read()

# print(content)


##예제
# with open('fruits.txt', encoding='utf-8') as fruit:
#     contentFruit = fruit.read()

# with open('vegi.txt', encoding='utf-8') as vegi:
#     contentVegi = vegi.read()

# with open('fruitVegi.txt', 'a+', encoding='utf-8') as fruitVegi:
#     fruitVegi.write(contentFruit)
#     fruitVegi.write(contentVegi)
#     fruitVegi.seek(0)
#     contentFull = fruitVegi.read()

# print(contentFull) 


#무한 반복 파일 읽어오기

import time #시간

while True:
    with open('vegi.txt', encoding='utf-8') as f:
        print(f.read())
        time.sleep(5) #5초 쉬기


#ctrl+c 강제종료