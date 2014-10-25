## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Function sets a cached matrix.

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
    get <- function() x
    setmatrix <- function(solve) m <<- solve
    getmatrix<- function() m
    list(set = set, get = get,
         setmatrix = setmatrix,
         getmatrix = getmatrix)
}


## Function solves for the inverse of a matrix.

cacheSolve <- function(x, ...) {
    m <- x$getmatrix()
    if(!is.null(m)) {
      message("getting cached matrix")
      return(m)
    }
    matrix <- x$get()
    m <- solve(matrix, ...)
    x$setmatrix(m)
    m
        ## Return a matrix that is the inverse of 'x'
}
