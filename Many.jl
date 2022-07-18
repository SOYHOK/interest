respon= "y"
while respon=="y":
        Deposit=int(input("enter the Deposit:"))
        Month=int(input("enter the month:"))
        Earned=int(input("enter the earned:"))
        #The Total-value to date
        f=(Deposit*(1+Earned/1200))
        f1=(f+(Deposit*(1+Earned/1200)**2))
        f2=(f1+(Deposit*(1+Earned/1200)**3))
        f3=(f2+(Deposit*(1+Earned/1200)**4))
        f4=(f3+(Deposit*(1+Earned/1200)**5))
        #The total Deposit
        Total_Deposit1=(Deposit )
        Total_Deposit2=(Deposit + Total_Deposit1)
        Total_Deposit3=(Deposit + Total_Deposit2)
        Total_Deposit4=(Deposit + Total_Deposit3)
        Total_Deposit5=(Deposit + Total_Deposit4)
        #The Total Interest Month
        month_interest1= Deposit/100
        month_interest2= (f+100)/100
        month_interest3= (f1+100)/100
        month_interest4= (f2+100)/100
        month_interest5=  (f3+100)/100
        #The Toatal Earned
        Total_earned1= f - Total_Deposit1
        Total_earned2= f1 - Total_Deposit2
        Total_earned3= f2 - Total_Deposit3
        Total_earned4= f3 - Total_Deposit4
        Total_earned5= f4 - Total_Deposit5
        #month
        month1=1 
        month2=1+month1
        month3=1+month2
        month4=1+month3
        month5=1+month4
      #List for the table
        List=[[month1,Deposit,Total_Deposit1,month_interest1,Total_earned1,f],
              [month2,Deposit,Total_Deposit2,month_interest2,Total_earned2,f1],
              [month3,Deposit,Total_Deposit3,month_interest3,Total_earned3,f2],
              [month4,Deposit,Total_Deposit4,month_interest4,Total_earned4,f3],
              [month5,Deposit,Total_Deposit5,month_interest5,Total_earned5,f4]]
        print(" Month "," Deposit","  Total Deposit "," This Month's Interest "," Total-Interest Earned "," Total-Value To-Date")
        for item in List:
                print("{:2}".format(item[0]),
                      "{:12.2f}".format(item[1]),
                      "{:14.2f}".format(item[2]),
                      "{:10.2f}".format(item[3]),
                      "{:22.2f}".format(item[4]),
                      "{:39.2f}".format(item[5]))
        print("Hello can i help you something?")
        respon=input("Continue? (Y/N):")
if respon=="n":
                        print("Good bye have a good day")
else:
                        print("better you should read the instruction")
                        