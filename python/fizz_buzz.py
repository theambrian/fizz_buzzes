#for input n, print a list of
#fizz buzz that is n long.
def fizz_buzz (n):
    for i in range(1,n+1):
        printString = ''
        if not(i % 3):
            printString += 'Fizz'
        if not(i % 5):
            printString += 'Buzz'
        if (i % 3) and (i % 5):
            printString += str(i)
        print(printString)

#main loop
while True:
    userInput = input('Hello. Please input the max number for your fizzbuzz: ').strip().lower()
    if userInput == 'q':
        break
    elif userInput == '' or not(userInput.isdigit()):
        print('Please input a number')
        continue
    else:
        fizz_buzz(int(userInput))
        continue

#test comment