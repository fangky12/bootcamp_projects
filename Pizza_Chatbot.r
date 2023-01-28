#dataframe
print("Welcome to Bizzaro Pizza Ristorante")

# question 1
print("How should I call you")
user_name <- readLines("stdin", n=1)
print(paste("Hello!",user_name))

# question 2
print("What do you want for today")

print("1.Order Pizza")
print("2.Send Feedback")
print("3.Track Order Status")
print("4.Contact Customer Service")

action <- readLines("stdin",n=1)
if (action == 1) {
  print("You choose ordering pizza")}
if (action == 2) {
  print("Please leave your comment here:")
  readLines("stdin",n=1)
  print("Thank you for reaching out and providing us with valuable feedback.")
} 
if (action == 3) {
  print("For contacting customer service, please contact 1234")
  }
if (action == 4) {
  print("For contacting customer service, please contact 1234")
  }
Sys.sleep(1)


#dataframe
id <- c(1,2,3,4,5)
topping <- c("Margherita","Pepperoni","Four Cheese","Smoked Salmon","Seafood")
price <- c(180,200,220,250,220)
extra_price <- price + 90

id_drink <- c(1,2,3,4)
drinks <- c("Water","Cola","Orange Juice","Lemonade")
drinks_price <- c(20,40,40,30)

id_app <- c(1,2,3,4)
appetizer <- c("French Fries","Garlic Bread","Truffle Balls","Calamari Fritti")
app_price <- c(50,50,100,200)

df_menu <- data.frame(id, topping, price,extra_price)
df_drink <- data.frame(id_drink,drinks,drinks_price)
df_app <- data.frame(id_app,appetizer,app_price)

# Question 3 Topping
if (action == 1) {
  print("Which topping do you choose? (type 1 - 5)")
  print(df_menu)
chosen_topping <- readLines("stdin",n=1)

if (chosen_topping == 1) {
  print("You chose Margherita")
} else if (chosen_topping == 2) {
  print("You chose Pepperoni")
} else if (chosen_topping == 3) {
  print("You chose Four Cheese")
} else if (chosen_topping == 4) {
  print("You chose Smoked Salmon")
} else if (chosen_topping == 5) {
  print("You chose Seafood")
 }
}
Sys.sleep(1)
# Question 4 Size

print("Which size do you choose?")
print("Press 1 for Regular Size (2 - 3 person)")
print("Press 2 for Extra (4 - 5 person)")
chosen_size <- readLines("stdin",n=1)
if (chosen_size == 1) {
  print("You chose Regular Size")
} else if (chosen_size == 2) {
  print("You chose Extra size")
} 
print("How many would you like to order?")
count_pizza <- readLines("stdin",n=1)
print(paste("Amount:",count_pizza))
Sys.sleep(1)

# Question 5 Drink
f_drink <- function() {
print("Would you like to order any beverages?")
print("Press 1 for yes")
print("Press 2 for no")
drink_decision <- readLines("stdin",n=1)
  if (drink_decision == 1) {
    print("Which one do you like to order? (Please type the number 1 - 4")
    print(df_drink)
    chosen_drink <- readLines("stdin",n=1)
    print(paste("You chose",df_drink$drinks[id_drink == chosen_drink]))
    Sys.sleep(1)

    print("How many would you like to order?")
    count_drink <- readLines("stdin",n=1)
  }
  }

# Question 6 Appetizer
print("Would you like to add any appetizers?")
print("Press 1 for yes")
print("Press 2 for no")
app_decision <- readLines("stdin",n=1)
if (app_decision == 1) {
  print("Please choose the appetizer you want: (Please type no. 1 - 4)")
  print(df_app)
  chosen_app <- readLines("stdin",n=1)
if (chosen_app == 1) {
  print("You chose French Fries")
} else if (chosen_app == 2) {
  print("You chose Garlic Bread")
} else if (chosen_app == 3) {
  print("You chose Truffle Balls")
} else if (chosen_app == 4) {
  print("You chose Calamari Fritti")
  }
else if (app_decision == 2) {
  f_drink()
}
Sys.sleep(1)
print("How many would you like to order?")
count_app <- readLines("stdin",n=1)
print(paste("Amount:",count_app))
  }
Sys.sleep(1)

# Question Drink 
print("Would you like to order any beverages?")
print("Press 1 for yes")
print("Press 2 for no")
drink_decision <- readLines("stdin",n=1)
if (drink_decision == 1) {
print("Which one do you like to order? (Please type the number 1 - 4")
print(df_drink)
chosen_drink <- readLines("stdin",n=1)
print(paste("You chose",df_drink$drinks[id_drink == chosen_drink]))
print("How many would you like to order?")
count_drink <- readLines("stdin",n=1)
  }
Sys.sleep(1)

# Question 7 Method
print("Would you prefer delivery or store pickup?")
print("Press 1 for delivery")
print("Press 2 for pickup")
receiving_method <- readLines("stdin",n=1)
shipping_fee <- if (receiving_method == 1) 50 else if (receiving_method == 2) 0
if (receiving_method == 1) {
  print("Please Enter your delivery address here: ")
  address <- readLines("stdin",n=1)
} else if (receiving_method == 2) {
  print("You select to get pizza at the store, please wait at the store for 10 - 15 minutes")
}

# Question 8 0rder Confirmation
print("-----Order Confirmation----")

cust_cart <- c(df_menu$topping[id == chosen_topping],df_app$appetizer[id_app == chosen_app],df_drink$drinks[id_drink == chosen_drink]) 
amount_cart <- c(count_pizza, count_app,count_drink)
price_cart <- c(df_menu$price[id == chosen_topping],df_app$app_price[id_app == chosen_app],df_drink$drinks_price[id_drink == chosen_drink])
amount_cart <- as.numeric(amount_cart)
price_cart <- as.numeric(price_cart)

df_invoice <- data.frame(cust_cart, amount_cart, price_cart) 

extra_size_price <- if (chosen_size == 1) 0 else if (chosen_size == 2) 90
  
print(df_invoice)
print(paste("Price Added for Extra Size:",extra_size_price))
print(paste("Shipping fee:",shipping_fee))
total_price <- sum(df_invoice$amount_cart * df_invoice$price_cart) + extra_size_price + shipping_fee
print(paste("Total Price:",total_price))
print("Would you like to confirm the order?")
print("Press 1 for yes")
print("Press 2 for no")
confirm <- readLines("stdin",n=1)


if (confirm == 1) {
  print("Please select the payment method")
  print("1.cash")
  print("2.credit/debit card")
  print("3.mobile banking")
  readLines("stdin",n=1)
print("Thank you very much for your order")
RandomNum <- runif(1, 1, 99)
print(paste("Your order no. is",RandomNum))
print("The pizza will be served to you within 10 - 15 minutes")
print("Thank you very much for your patience. Have a lovely day!")
}
