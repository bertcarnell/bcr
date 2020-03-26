
#' C++ style increment / decrement operators
#'
#' @name cpp_increment
#' 
#' @param left left operand
#' 
#' @return the result
NULL

#' @rdname cpp_increment
#' 
#' @export
#' 
#' @examples 
#' a <- 1
#' inc(a)
#' a
inc <- function(var) 
{
  eval.parent(substitute({var <- var + 1L}))
}

#' @rdname cpp_increment
#' 
#' @export
#' 
#' @examples 
#' a <- 1
#' dec(a)
#' a
dec <- function(var) 
{
  eval.parent(substitute({var <- var - 1L}))
}
