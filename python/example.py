#예제1
def mult_two(a,b):
    return a*b

if __name__ == '__main__':
    print(mult_two(3,2))
    print(mult_two(1,0))


#예제2
def easy_unpack(elements):
    return (elements[0], elements[2], elements[-2])  #튜플로 리턴

if __name__ == '__main__':
    print(easy_unpack((1,2,3,4,5,6,7,9)))
    print(easy_unpack((1, 1, 1, 1)))
    print(easy_unpack((6, 3, 7)))


#예제3

def first_word(text):
    slice = text.split()
    return slice[0]

if __name__ == '__main__':
    print(first_word("Hello world"))
    print(first_word("a world"))
    print(first_word("hi"))


#예제4. 패스워드 길이 6이상

def is_acceptable_password(password):
    # if len(password)> 6:
    #     return True
    # else:
    #      return False
    #굳이 할 필요가 없는 걸 했네
    return len(password)> 6

if __name__ == '__main__':
    print(is_acceptable_password('short'))
    print(is_acceptable_password('muchlonger'))
    print(is_acceptable_password('ashort'))


#예제5. 정수(int)의 길이 구하기

def number_length(a):
    return len(str(a))

if __name__ == '__main__':
    print(number_length(10))
    print(number_length(0))
    print(number_length(4))
    print(number_length(44))


#6. 문자열을 입력 받아서 역순으로 리턴

def backward_string(val):

    # valList= list(val)
    # return ''.join(valList[::-1]) 
    #내 경우엔 다시 문자열로 만들어줌
    #바로 리턴했으면 더 간단했구나. 굳이 수정할 것이 아니라, 출력만 하면 되니까
    return val[::-1]

if __name__ == '__main__':
    print(backward_string('val'))
    print(backward_string(''))
    print(backward_string('ohho'))
    print(backward_string('123456789'))


#7. 리스트 items와 정수 i 입력받아, 만약 i가 items에 있으면 i앞의 숫자들 제거하고 리턴

def remove_all_before(items, i):
    # if i not in items:
    #     return items
    # target = items.index(i)
    # return items[target:]
    #items는 리스트
    #i는 정수
    #index 사용해보자
    if i in items:
        return items[items.index(i):]
    else:
        return items

if __name__ == '__main__':
    print(list(remove_all_before([1, 2, 3, 4, 5], 3)))
    print(list(remove_all_before([1, 1, 2, 2, 3, 3], 2)))
    print(list(remove_all_before([1, 1, 2, 4, 2, 3, 4], 2)))
    print(list(remove_all_before([1, 1, 5, 6, 7], 2)))
    print(list(remove_all_before([], 0)))
    print(list(remove_all_before([7, 7, 7, 7, 7, 7, 7, 7, 7], 7)))


#8 text 문자열을 입력받아 문자열의 문자가
# 모두 대문자 이면 True 리턴,
# 소문자가 있으면 False 리턴, 
# 빈'  ' 문자열이나 중간의 '  ' 는  True 로 한다.

def is_all_upper(text):
    # return text == text.upper() or text == '' #굳이 공백을 조건 달지 않아도 값은 같음?
    return text == text.upper()

if __name__ == '__main__':
    print(is_all_upper('ALL UPPER'))
    print(is_all_upper('all lower'))
    print(is_all_upper('mixed UPPER and lower'))
    print(is_all_upper(''))


#9.  리스트를 입력받아 첫번째 아이템을 맨 마지막으로 
# 보낸다음 리턴,
# 빈 리스트 [ ] 나  [ 1 ] 하나의 값이 있을때는 같은 리스트가 리턴

def replace_first(items):
    # if len(items)<=1:
    #     return items 
    # a= items.pop(0)
    # items.append(a)
    # return items

    if len(items)>1:
        items.append(items.pop(0))
    return items


if __name__ == '__main__':
    print(list(replace_first([1, 2, 3, 4])))
    print(list(replace_first([1])))
    print(list(replace_first([])))


#10. 양수를 입력받아서 숫자의 자릿수중에 가장 큰수(0~9)가 리턴

def max_digit(number):
    # max = 0
    # for i in str(number):
    #     if int(i)> max:
    #         max = int(i)
    # return max

    return max(str(number))

if __name__ == '__main__':
    print("Example:")
    print(max_digit(0))
    print(max_digit(52))
    print(max_digit(634))
    print(max_digit(1))
    print(max_digit(10000))
