## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
      invMat <- NULL
      
      #set function
      set <- function(y){
        x <<- y
        invMat <<- NULL
      }
      
      #get function
      get <- function(){x}
      
      #set inverse matrix
      setInv <- function(invMat) {invMat <<- invMat}
      
      #get inverse matrix
      getInv <- function(){invMat}
      
      list(set = set, get = get, setinverse = setInv, getinverse = getInv)
}



## Write a short comment describing this function
## Return a matrix that is the inverse of 'x' using the "special" matrix 
## from makeCacheMatrix function of x

cacheSolve <- function(x, ...) {
    #create a cache of inverse matrix of x
    
    invMat <- x$getinverse()
    
    if (!is.null(invMat)){
        message("getting cached data")
        return(invMat)
    }
    
    data <- x$get()
    invMat <- solve(data, ...)
    x$setinverse(invMat)
    invMat
}


    