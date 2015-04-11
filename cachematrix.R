## La función va a crear una matriz y posteriormente se va a invertir la misma

## Se crea la función de la matriz con su cache.

makeCacheMatrix <- function(x = matrix()) {
      m <- NULL
      set <- function(y) {
            x <<- y
            m <<- NULL
      }
      get <- function() x
      setmatrix <- function(solve) m <<- solve
      getmatrix <- function() m
      list(set=set, get=get, 
           setmatrix = setmatrix,
           getmatrix = getmatrix)   ## lista de métodos
            
}


## Se invierte la función de la matriz x.

cacheSolve <- function(x = matrix(), ...) {
        
      
      m <- x$getmatrix()
      if(!is.null(m)){
            message("getting cached data")
            return(m)
      }
      
      matrix <- x$get() 
      m <- solve(matrix, ...)
      x$setmatrix(m)
      m     ##Salida de la inversa de la matriz
}

