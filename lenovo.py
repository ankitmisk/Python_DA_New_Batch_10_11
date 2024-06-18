def check_palindrome(string:'str'):
    return 'Palindrome' if string.lower() == string.lower()[::-1] else 'Not a Palindrome'

def check_anagram(str1:'str',str2:'str') -> str :
    data1 = {}
    data2 = {}
    
    for i in str1:
        data1[i] = str1.count(i)
        
    for j in str2:
        data2[j] = str2.count(j)
        
        
    return 'Anagram' if data1  == data2 else "Not an Anagram"



def get_fibbo(howmuch:'int'):
    
    '''To get fibbo numbers based on given length'''
    
    if type(howmuch) == int:
    
        fibbo = [0,1]

        for i in range(howmuch-2):
            fibbo.append(fibbo[-1] + fibbo[-2])

    #     print('fibbo is: ',fibbo)
        return fibbo
    else:
        return None
    
    
    
def minn(data:'list,tuple'):
    
    '''This is a minn docstring
    ex: minn([10,23,432,4,65,76])
    ans: 4'''
    my_min = data[0]
    
    for i in data:
        if i<my_min:
            my_min = i
            
    return my_min




def maxx(data:'list,tuple'):
    
    '''This is a maxx docstring
    ex: maxx([1,23,432,4,65,76])
    ans: 432'''
    
    my_max = data[0]
    
    for i in data:
        if i>my_max:
            my_max = i
    print(f'Max element: {my_max}')
    
    
    
    
    
    
def check_armstrong(number:int):
    lt = len(str(number))
    
    result = 0
    for i in str(number):
        result += int(i)**lt
        
    return 'Armstrong' if result == number else 'Not an Armstrong'




def check_prime(num):
    for i in range(2,num):
        if num%i ==0:
            break
    else:
        return num 
    
    
    
def factorial(num:int):
    result = 1
    for i in range(1,num+1):
        result *= i
    
    return result


def text_to_speech_and_play(data):
    import pygame
    from gtts import gTTS
    pygame.init()
    text = gTTS(data)
    text.save('temp.mp3')

    music = pygame.mixer.Sound('temp.mp3')
    music.play()
    
    
    
def change_font(data):
    for i in data.upper():
        if i == ' ':
            print(i,end='')
        else:
            print(chr((ord(i)-65)+120016),end='')