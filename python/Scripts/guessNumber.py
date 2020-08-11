import random

min = 1
max = 20
answer= random.randint(min, max)
name = ''
chance = 6
count = 0

# beforeNum =[] #  리스트의 길이? list assignment index out of range
#이렇게 만들어두고 후에 리스트 요소를 추가하려고하면 어떻게 해야하지?


def checkAnswer():  #함수가 앞에 와야지 실행되네
   
    while True:

        print('맞혀보세요')
        playerNum= int(input())

        if playerNum == answer:
            print('잘 맞혔어요 '+ name+ '님 ' + str(count)+'번 만에 맞혔어요')
            break

        elif playerNum > answer:
            print('그 숫자보다 작은수')
            # saveNums(playerNum) #
            count += 1
        
        elif playerNum < answer:
            print('그 숫자보다 큰 수')
            # saveNums(playerNum) #
            count += 1

        if count == 6:
            print('틀렸어요. 정답은 '+ str(answer)+'입니다.' )
            break


# def saveNums(playerNum): #
    
#     beforeNum

#     beforeNum[count] = playerNum

#     for i in beforeNum:
#         print(i, end= ' ')


print('당신의 이름은?')
name = input()

print('안녕하세요 '+ name +'님, ' + str(min)+ '에서 ' + str(max) + '까지 숫자중 하나를 생각합니다.')
print('기회는'+ str(chance) +'번입니다')

checkAnswer()





# 랜덤숫자 = random.randint(1,20)

# for 시도횟수 in range(1,7):
#     print('맞혀보세요')
#     guess = int(input())

#     if guess < 랜덤숫자:
#         print('그 숫자보다 큰 수')
#     elif guess > 랜덤숫자:
#         print('그 숫자보다 작은 수')
#     else:
#         break

# if guess == 랜덤숫자:
#     print('잘 맞혔어요~')
# else:
#     print('틀렸네요. 정답은-')