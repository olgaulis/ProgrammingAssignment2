#Listed below calls deliver inverse matrix to the supplied in parameter


# listed below function delivers a list of the functions for matrix
# used in inversion

makeCacheMatrix <- function(x = matrix()) {
    inverse_matrix <- NULL

    set <- function(matrix2) {
         x <<- matrix2
         inverse_matrix <<- NULL
     }

    get <- function() x

    setmatrixinv <- function(solve) inverse_matrix <<- solve

    getmatrixinv <- function() inverse_matrix

#returning the list of functions
    list(set = set, 
         get = get,
         setmatrixinv = setmatrixinv,
         getmatrixinv = getmatrixinv)
 }
 
# listed below function takes as input function list, and able to 
# inverse the matrix

cacheSolve <- function(x, ...) {

    inverse_matrix <- x$getmatrixinv()
    if(!is.null(inverse_matrix)) {

         message("getting cached data...")

         return(inverse_matrix)
     }

    inverse_matrix <- solve(x$get(), ...)

    x$setmatrixinv(inverse_matrix)

## Return a matrix that is the inverse of 'x'
    inverse_matrix

 }
