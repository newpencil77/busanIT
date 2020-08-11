#1 홍길동씨의 평균점수
#국어 80, 영어 75, 수학 55

hongGrade= [80, 75, 55]
print(sum(hongGrade)/len(hongGrade))


#2. 홍길동 씨의 주민등록번호는 881120-1068234이다. 
# 홍길동 씨의 주민등록번호를 연월일(YYYYMMDD) 부분과 그 뒤의 숫자 부분으로 나누어 출력.

길동주민번호 = '881120-1068234'
앞자리 = 길동주민번호.split('-')[0]
뒷자리 = 길동주민번호.split('-')[1] 
print('앞자리는: ' + 앞자리)
print('뒷자리는: ' + 뒷자리)


#3. 다음과 같은 문자열 a:b:c:d가 있다. 
# 문자열의 replace 함수를 사용하여 a#b#c#d로 바꿔서 출력해 보자.

print('a:b:c:d'.replace(':', '#'))

#4. [1, 3, 5, 4, 2] 리스트를 [5, 4, 3, 2, 1]로 만들어 보자.  ( 리스트의 내장함수 사용 )

a = [1, 3, 5, 4, 2]
# a.sort(reverse=True)
# print(a)
b = reversed(a)
print(list(b))


#5.['Life', 'is', 'too', 'short'] 리스트를 만들고
#Life is too short 문자열로 만들어 출력해 보자. (문자열의 join )

lifeIs = ['Life', 'is', 'too', 'short']
print(' '.join(lifeIs))


#6. 딕셔너리 a에서 'B'에 해당되는 값을 추출해 보자. ( pop )
a = {'A':90, 'B':80, 'C':70}
aValues= list(a.values())
print(aValues.pop(1))


# a 리스트에서 중복 숫자를 제거해 보자.  
#set(lst) => 집합자료형 (중복의 제거 )

#? 집합자료형 -중복 불허, 순서x

a= [1, 1, 1, 2, 2, 3, 3, 3, 4, 4, 5]

lst = set(a)
print(list(lst))





