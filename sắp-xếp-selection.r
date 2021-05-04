selection_sort <- function(x){ # Cách 1
  n <- length(x)
  for (i in 1 : (n-1)){
    for (j in (i +1) : n){
      if (x[j] < x[i]){
        temp <- x[i]
        x[i] <- x[j]
        x[j] <- temp
      }
    }
  }
return(x)
}

x <- c(32, 17, 49, 98, 06, 25, 53, 61)
selection_sort(x)

selfsort <- function(x){ #Cách 2
  if (length(x) > 0){
    min <- which.min(x)
    c(x[min], selfsort(x[-min]))
  }else x
}
x <- c(32, 17, 49, 98, 06, 25, 53, 61)
selfsort(x)
