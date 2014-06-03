## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        solved <- NULL
        
        set <- function(new_x){
                x <<- new_x
                solved <<- NULL
        }
        
        showX <- function(){
                x
        }
        setSolved <- function(new_solved) {
                solved <<- new_solved
        }
        showSolved <- function(){
                solved
        }
        
        list(set=set, showX=showX, setSolved=setSolved,
             showSolved=showSolved)        
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        solved <- x$showSolved()
        if(!is.null(solved)){
                message("getting cached inversion")
                return(solved)
        }
        myMatrix <- x$showX()
        solved <- solve(myMatrix, ...)
        x$setSolved(solved)
        solved        
}
