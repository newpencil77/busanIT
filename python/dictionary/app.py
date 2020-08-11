import json
import difflib


#data 변수에 JSON타입을 딕셔너리 형태로 가져오기
data = json.load(open('data.json')) 


#단어를 넣으면 해당 단어에 해당하는 value값 리턴해줌
#만약 사전에 없는 단어 입력할 경우 #해당 단어가 없다고 리턴
def translate(word):    
    word = word.lower()
    if word in data:
        return data[word]
    elif word.title() in data:
        return data[word.title()]
    elif word.upper() in data:
        return data[word.upper()]

    else:
        recomandWords= difflib.get_close_matches(word, data.keys())
        if len(recomandWords)>0:
        # recomandWords= difflib.get_close_matches(word, data.keys())[0]
            print('혹시 입력한 단어가 %s 입니까?' %recomandWords[0])
            question = input('맞으면 y 아니면 n 입력: ')
        
            if question == 'y':
                return data[recomandWords[0]]

            else:
                if len(recomandWords) >=2:
                    nextClose= recomandWords[1:]
                    print('다른 추천 단어는')
                    print(nextClose)
                    try:
                        question2 = input('몇 번째 단어를 검색해보시겠습니까?')
                        if int(question2) <= len(nextClose):
                            recomandWord2 = nextClose[int(question2)-1]
                            return data[recomandWord2]
                    except:
                        return '그런 영단어는 없습니다'
                return '다른 추천단어가 없습니다. 다시 검색해주세요.'

        return '그런 영단어는 없습니다.'


word = input("영어 단어 입력: ")
output = translate(word) #리스트가 output에 들어감

if type(output) == list:
    for item in output:
        print(item)
else:
    print(output)



#다시 검색하도록 만들기



#단어가 맞지 않았을 경우- 선생님
# else:

#     match = difflib.get_close_matches(word, data.keys(), cutoff= 0.8)

#     if len(match)>0:
#         print('혹시 입력한 단어가 %s 입니까?' % match[0])
#         answer = input('맞으면 y 아니면 n 입력: ')
#         if answer == 'y':
#         return data[match[0]]
# return '그런 영단어는 없습니다. 철자를 체크하세요.'

# while True:
#     print('영어사전입니다. 단어를 검색하시고 싶으면 1을 종료하고 싶으시면 2를 입력해주세요')