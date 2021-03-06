## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  invm <- NULL
  set <- function(y) {
    x <<- y
    invm <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) invm <<- inverse
  getinverse <- function() invm
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    
    ## Return a matrix that is the inverse of 'x'
    invm <- x$getInverse()
    if (!is.null(invm)) {
      message("getting cached data")
      return(invm)
    }
    mat <- x$get()
    invm <- solve(mat, ...)
    x$setInverse(invm)
    invm
}
