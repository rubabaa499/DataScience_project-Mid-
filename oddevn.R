y <- readline(prompt="Enter a number:  ")

x <- as.integer(y)


if( (x%%2) == 0) {
  
  print(paste("The number ",y," is Even"))
  
} else 
  {
  print(paste("The number ",y," is Odd"))
    
    
  }