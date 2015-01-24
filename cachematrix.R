## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m <- NULL # define m

## function set
set <- function(y){
x <<- y  
m <<- NULL 
}
## function get
get <- function() x
## function setinverse
setinverse <- function(inverse) m <<- inverse
## function getinverse
getinverse <- function() m
## return a list
list(set = set, get = get,setinverse = setinverse,getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 m <- x$getinverse() ## first, to know the m in cache (NULL or Answer)
 
 ## if m is not NULL, then return a massage and return the m
if(!is.null(m)) {
 message("getting cached data")  ## return a massage to show that there is a cache data
return(m)  ## return m
}
 ## else solve the inverse of matrix by using the solve()
data <- x$get()  ## get matrix
m <- solve(data)  ## solve inverse
x$setinverse(m)  ## save the answer in cache
m ## return m
}
