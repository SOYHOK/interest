def my_function():
  # Type your Deposit, Interest rate, month
  A = float(input("Enter Deposit Amount:"))  
  W = float(input("Enter Interest rate:"))
  N = int(input("Enteer Month:"))
  print("\n{:<10} {:<15} {:<20} {:<25} {:<25} {:<30}".format("Month", "Deposit", "Total Deposit", "This Month's interest", "Total-Interest Earned", "Total-value to-Date"))
  last_month_interest = 0 
  for i in range(N):  
    
    month= i+1
    total_deposit = (A*month)
    F= A*((1+W/1200)**month)
    month_interest = F - A
    total_interest= last_month_interest + month_interest
    last_month_interest += month_interest
    total_value= total_interest + total_deposit
    deposit= format(A)
    total_deposit = format(total_deposit)
    month_interest= "{:.2f}".format(month_interest)
    total_interest= "{:.2f}".format(total_interest)
    total_value   = "{:.2f}".format(total_value)
    print ("{:<10} {:<17} {:<21} {:<28} {:<27} {:<27}".format(month, deposit, total_deposit, month_interest, total_interest, total_value))
    
my_function() 
while True: 
  if input("\nDo you want to do again? (y/n):") == "y":
    my_function()