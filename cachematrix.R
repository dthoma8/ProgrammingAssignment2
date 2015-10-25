## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(Y) {
        X <<- Y
        m <<- NULL
        }
        get <- function() X
        setmean <- function(mean) m <<- mean
        getmean <- function() m
        list(set = set, get = get, setmean = setmean, getmean = getmean)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        X <- solve(X)
        m <- X$getmean()
        if(!is.null(m)) {
        message("getting cached data!")
        return(m)
        }
        data <- X$get()
        m <- mean(data, ...)
        X$setmean(m)
        m
}
