
## Function takes a matrix as input
## Defines setting of values, getting cached values, by means of set, get, Inverse value of matrix 

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        
        set <- function(y) {
                
                x <<- y
                
                m <<- NULL
                
        }
        
        get <- function() x
        
        setinv <- function(solve) 
                m <<- solve
        
        getinv <- function() m
        
        list(set = set, get = get, 
             setinv = setinv,
             getinv = getinv)
}


## Takes the makeCacheMatrix as an input and solves for a Inverse of a 2x2 matrix
## If mean already exists, the mean is returned from cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinv()
        
        if(!is.null(m)) {
                
                message("getting cached data")
                
                return(m)
                
        }
        
        data <- x$get()
        
        m <- solve(data, ...)
        
        x$setinv(m)
        
        m
        
}
