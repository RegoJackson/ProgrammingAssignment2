## inversion of a matrix 

## define the function

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL 
## set the function
  set <- function(y) { 
    x <<- y 
    inv <<- NULL 
  } 
## get the function
  get <- function() x 
  setinverse <- function(inv) inv <<- inverse 
  getinverse <- function() inv 
## get the inverse
  list(set = set, get = get, 
       setinverse = setinverse, 
       getinverse = getinverse) 
}


## define a function as cacheSolve

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- x$getinverse() 
  if(!is.null(inv)) { 
    message("getting cached data") 
    return(inv) 
  } 
## set the data to get the function
  data <- x$get() 
  inv <- inverse(data, ...) 
  x$setinverse(inv) 
## get the inverse 
  inv
 }
