## Put comments here that give an overall description of what your

## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
        r <- NULL
        get <- function () {x}
        setsolve <- function(solve) {r<<-solve}
        getsolve<- function() {r}
        #list (get = get, setsolve=setsolve, getsolve=getsolve)
}


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'         
        r2 <- x$getsolve()
        if(!is.null(r2)) {
                message("getting cached data")
                return(r2)
        }
        (x$setsolve(solve(x$get(),...)))
}
