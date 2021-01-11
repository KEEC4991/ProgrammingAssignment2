## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  ## Inicializar la matriz inversa
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
  getInverse <- function(){
    inversa
  }
  
  ## Setter de una matriz inversa
  setInverse <- function(invertida){
     inversa <<- invertida
  }
  
  ## Creacion del retorno de la lista de metodos del objeto en R
  list(
    set = set,
    get = get,
    getInverse = getInverse,
    setInverse = setInverse
  )
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  ## Pasos:
  ## 1. Extraccion de la inversa
  ## 2. Validacion de si ya existe
  ## 3. Si existe, se devuelve la matriz inversa existente.. termino la ejecucion con con return   
  ## 4. Sino calculo la nueva de la data actual
  
  
  ## Obtener la matriz inversa actual
  actual_inversa <- x$getInverse()
  
  ## Si no existe o no ha sido calculada, se calcula y retorna
  
  if( is.null(actual_inversa) ){

        ## Obtengo la data
    mi_data <- x$get();
    
    ## Calculo la inversa
    nueva_inversa <- solve(mi_data)
    
    ## Almaceno la nueva inversa
    x$setInverse(nueva_inversa)
    
    ## Retorno la nueva inversa
    nueva_inversa
  
  ## Si existe se devuelve el valor calculado    
  }else{
    
    ## Retorno la inversa actual
    actual_inversa
  
    }
    
}
