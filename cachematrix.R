## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This Function will make a cache matrix and set inv as null

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set<- function(y){
          x<<-y
          inv <<- NULL
          }
          get<-function(){x}
          setInverse<- function(inverse){inv<<-inverse}
          getInverse<- function(){inv}
          list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## Write a short comment describing this function
## This functionn is cacheSolve and returns the matrix to inverse

cacheSolve <- function(x, ...) {
      inv <- x$getInverse()
      if(!is.null(inv)){
        ## Return a matrix that is the inverse of 'x'
            message("getting cached data")
            return(inv)
         }
         mat<- x$get()
         inv<- solve(mat, ...)
         x$setInverse(inv)
         inv
}
        
