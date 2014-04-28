##  Trying to put something in here for the assignment - but very lost

## create a inversable matrix

makeCacheMatrix <- function(x = matrix()) {
        usedvalues <- NULL
        set <- function(y) {
                x <<- y
                usedvalues <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) usedvalues <<- solve
        getinverse <- function() usedvalues
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## trying to inverse a matrix  


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        usedvalues <- x$getinverse()
        if(!is.null(usedvalues)) {
                message("getting cached data")
                return(usedvalues)
        }
        data <- x$get()
        usedvalues <- solve(data, ...)
        x$setinverse(usedvalues)
        usedvalues
}