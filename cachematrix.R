## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  ## Inicializar la matriz
  inversa <- NULL
  
  ## Getter de la matrix - este metodo retorna la matriz
  get <- function( ){
    x ## Return matrix
  }
  
  ## Setter de la matriz
  set <- function( matrix ) {
    x <<- matrix
    inversa <<- NULL
  }
  
  ## Getter matriz inversa
  getInversa <- function(){
    inversa
  }
  
  ## Setter de una matriz inversa
  setInversa <- function(invertida){
     inversa <<- invertida
  }
  
  ## Creacion del retorno de la lista de metodos del objeto en R
  list(
    set = set,
    get = get,
    getInverse = getInversa,
    setInverse = setInversa
  )
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
