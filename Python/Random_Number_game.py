import random
user1=int(input("user1 enter a Random number from 1 to 10:"))
user2=int(input("user2 enter a Random number from 1 to 10 except user1 added number:"))
com_gen_num=random.randrange(1,10)
if(com_gen_num == user1):
    print("user1 wins the match")
elif(com_gen_num == user2):
    print("user2 wins the match")
else:
    print("Better Luck Next Time")


