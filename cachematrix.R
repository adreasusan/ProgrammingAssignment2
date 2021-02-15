##Caches a matrix and inverts it


makecachematrix <- function(x = matrix()) {
    inv <- NULL
    ##intitializes inverse
    set <- function(y) {
        x <<- y
        inv <<- NULL
##changes the value of the matrix if changed
}
##gets value of inverse
get <- function() x
##solves for inverse
setinverse <- function(solve) inv<<-solve
##gets the inverse
getinverse <- function() inv
list(set = set,
get = get,
setinverse = setinverse,
getinverse = getinverse)

}
##gets the cached inverse
cachesolve <- function(x, ...) {
    inv<-x$getinverse()
    if (!is.null(inv)) {
        message("getting cached inverse matrix")
        return(inv)
}
    ##calculates inverse if not cached
    data<-x$get()
    inv<-solve(data, ...)
    x$setinverse(inv)
    inv
}
