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
      setInv <- function(invMatrix) {invMat <<- invMatrix}
      
      #get inverse matrix
      getInv <- function(){invMat}
      
      list(set = set, get = get, setinverse = setInv, getinverse = getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    invMat <- x$getinverse()
    
    if (!is.null(invMat)){
        message("getting cached data")
        return invMat
    }
    
    data <- x$get()
    invMat <- solve(data, ...)
    x$setinverse(invMat)
    invMat
}
