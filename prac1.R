print ("hello R")

#ARITHEMATIC OPS
1+1
2+3*4
(2+3)*4
3^2
sqrt(9)
pi
complex <- 9+3i
print(complex)

x <- 2
y <- 3
z <- 4
x*y*z
print(x*y*z)

for(x in 1:10)
{
  print(x)
}

x <- 10.234
sqrt(x)
ceiling(x)
floor(x)

str <- ("Rubaba")
tolower(str)
toupper(str)
nchar(x)

text <- "awsome"
paste ("R is " , text) #paste = combines string

str1 <- "Rubaba"
str2 <- "Rahman"
paste (str1, str2)

num1 <- 10
num2 <- 20
num1+num2

#multiple variable
var1 <- var2 <- var3 <- "orange"
var1
var2
var3

#if-else
a <- 80
b <- 10

if(a>b)
{
  print("a is greater than b")
}

# while loop
i <- 1
while (i<6){
  print(i)
  i<- i+1
}


#for loop
for(x in 1:20)
{
  print(x)
}

#functions

sum <- function()
{
  print("hello")
  
}
sum()

#function argument
sum <- function(sum1,sum2)
{
  paste(sum1,sum2)
}
sum("add","sub")

#user input
x<-readline (prompt = "enter the number")

#odd-even check

x<- as.integer(readline(prompt = "enter the number"))

if ((x%%2)==0){
  print ("The number is even")
 
}else{
  print("the number is odd")
}


my_var <- 30 # my_var is type of numeric
my_var <- "Sally" # my_var is now of type character (aka string)

print(my_var) # print my_var

#datatype checking with class()

x<-12.09
class(x)

x <- 1000L
class(x)

x <- 9i + 3
class (x)

x <- "R is sexy"
class(x)

x <- TRUE
class(x)

#Type conversion
 x<- 1L
 y<- 100
 
 a<- as.numeric(x)
 b<- as.integer(x)
 
 class(x)
 class(y)
 x
 y
 
#grepl()checks if a character is present or not in a string
 
 str <- "Hello World"
 grepl("H" , str)
 grepl("Hello" , str)
 grepl("k" , str)
 

 str <- "We are the so-called \"Vikings\", from the north."
 
 str
 cat(str)

 
 #nested if
 
 x<-2
 
 if(x>10){
   
   print("x is above 10")
   
   if (x>20){
     print("x is greater than 20")
   }else {
     print("not above 20")
   }
 }else {
   print("below 10")
 }



#AND
 
a<- 100
b<- 2200
c<- 500

if(a>b & c>b)
{
  print ("both condition are true")
}else{
  print("not true")
}

#OR
a<- 100
b<- 220
c<- 500

if(a>b | c>b)
{
  print ("one is true")
}else{
  print("not true")
}

#while loop
i <- 1
while (i < 6) {
  print(i)
  i <- i + 1
}

#while with breaks
i <- 1
while (i < 6) {
  print(i)
  i <- i + 1
  if(i == 4){
    break
  }
}

#skip 3
i <- 1
while (i < 6) {
  print(i)
  i <- i + 1
  if(i == 3){
    next
  }
  print(i)
}

#yahtzee
dice <- 1
while (dice <= 6) {
  if (dice < 6) {
    print("No Yahtzee")
  } else {
    print("Yahtzee!")
  }
  dice <- dice + 1
}
















 
 
 
 
 
 
 
 
 
 
 
 








