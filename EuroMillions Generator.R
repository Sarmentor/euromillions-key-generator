
generator <<- function(n, min, max){
  nums <- sample(size=n,x=min:max, replace = FALSE)
  nums <- nums[order(nums)]
  return(nums)
}

my.stars <<- function(nstars){
  return(generator(nstars,1,12))
}

my.numbers <<- function(nnum){
  return(generator(nnum,1,50))
}

go <- function(nkeys){
  print("Here are the keys generated:")
  for(key in 1:nkeys){
   num <- my.numbers(nnum)
   st <- my.stars(nstars)
   cat(paste(num, collapse=" ")," + ",paste(st,collapse = " "),"\n", sep="")
  }
}


cat("Intro: Are you ready?\nYou will be asked how many keys you want to generate,\nhow many numbers and stars you want the keys to have!")
nkeys <<- readline("What is the quantity of keys you want?")
nnum <<- readline("What is the quantity of numbers you want?")
nstars <<- readline("What is the quantity of stars you want?")

go(nkeys)
