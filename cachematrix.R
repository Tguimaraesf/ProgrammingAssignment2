## Caching the Inverse of a Matrix:
## Save computation time by caching you matrix


## this function will create an object that stores a matrix and caches the inverted matrix,.

makeCacheMatrix <- function(x = matrix()) {
  g <- NULL
  set <- function(y){
    x <<- y
     <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) g <<- inverse
  getInverse <- function() g 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}

 ## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x) {
  g <- x$getInverse()
  if(!is.null(g)){
    return(g)
  }
  mat <- x$get()
  g <- solve(mat)
  x$setInverse(g)
  g
}
