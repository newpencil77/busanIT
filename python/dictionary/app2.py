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


def switch(x):
    return {'1': 'find', '2': 'quit'}.get(x, 'default')


while True:
    start = input('영어사전입니다. 단어 검색 1 종료 2 : ')

    if switch(start) == 'find':
        word = input("영어 단어 입력: ")
        output = translate(word) #리스트가 output에 들어감

        if type(output) == list:
            for item in output:
                print(item)
        else:
            print(output)
        
        print()

    elif switch(start) == 'quit':
        print('종료합니다')
        break
    else:
        continue


#없는 단어를 추가하도록 하기?
