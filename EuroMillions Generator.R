
generator <<- function(n, min, max){
  nums <- sample(size=n,x=min:max, replace = FALSE)
  nums <- nums[order(nums)]
  return(nums)
}

my.stars <<- function(){
  return(generator(2,1,12))
}

my.numbers <<- function(){
  return(generator(5,1,50))
}

go <- function(nkeys){
  print("Here are the keys generated:")
  for(key in 1:nkeys){
   num <- my.numbers()
   st <- my.stars()
   cat(paste(num, collapse=" ")," + ",paste(st,collapse = " "),"\n", sep="")
  }
}

go(1)