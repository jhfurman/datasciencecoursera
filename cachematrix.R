## x will be my matrix
## define the matrix
## get the matrix
## define the inverse
## get the inverse

## Basically setting up the inverse of the matrix x and that will be y

makeCacheMatrix <- function(x = matrix()) {
  inv = NULL
  set = function(y){
    x <<- y ## tell x that it is going to be y so its different
    inv <<- NULL
  }

  get = function () x ## getting x
  setinv = function(inverse) inv <<-- inverse
  getinv = function() inv
  list( set=set,
        get=get,
        setinv=setinv,
        getinv=getinc)
  
}


## output of first function
## return inverse of original matrix input

cacheSolve <- function(x, ...) {
  
  inv = x$getinv()
  
  if (!is.null(inv)){ ## just incase its already done
    message("getting cached data")
    return(inv)
  }
  
  ## if not done then compute please
  data=x$get()
  inv = solve(data, ...)
  
  # set inverse 
  x$setinv(inv)
  return(inv)
        
}
