# This code consists of two function. One creates a special matrix object that stores 
# the inverse of a matrix named "matx" and the Other function computes the inverse of "matx"

makeCacheMatrix <- function(x = matrix()) {
  inmatx <- NULL
  set <- function(matx) {
    x <<- matx
    inmatx <<- NULL
  }
  get <- function() x
  setinmatx <- function(inv) inmatx <<- inv
  getinmatx <- function() inmatx
  list(set = set, 
       get = get, 
       setinmatx = setinmatx, 
       getinmatx = getinmatx)
}


#The followinf funcion first checks for the cached data, ie., the inverse of "matx" and if there exists no cached data, 
#then it computes the inverse and stores it in "setinmatx"

cacheSolve <- function(x, ...) {
  inmatx <- z$getinmatx()
  if(!is.null(inmatx)) {
    message("getting cached data")
    return(inmatx)
  }
  data <- z$get()
  inmatx <- solve(data)
  z$setinmatx(inmatx)
  inmatx       
}
