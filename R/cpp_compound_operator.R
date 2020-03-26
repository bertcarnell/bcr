
#' C++ style compound operators
#'
#' @name cpp_compound
#' 
#' @param left left operand
#' @param right right operand
#' 
#' @return the result
NULL

#' @rdname cpp_compound
#' 
#' @export
#' 
#' @examples 
#' a <- 1
#' b <- 2
#' a %+=% 1
#' a
#' a %+=% b
#' a
#' b
`%+=%` <- function(left, right) 
{
  eval.parent(substitute({left <- left + right}))
}

#' @rdname cpp_compound
#' 
#' @export
#' 
#' @examples 
#' a <- 3
#' b <- 2
#' a %*=% 5
#' a
#' a %*=% b
#' a
#' b
`%*=%` <- function(left, right) 
{
  eval.parent(substitute({left <- left * right}))
}

#' @rdname cpp_compound
#' 
#' @export
#' 
#' @examples 
#' a <- 3
#' b <- 2
#' a %-=% 1
#' a
#' a %-=% b
#' a
#' b
`%-=%` <- function(left, right) 
{
  eval.parent(substitute({left <- left - right}))
}

#' @rdname cpp_compound
#' 
#' @export
#' 
#' @examples 
#' a <- 3
#' b <- 2
#' a %/=% 3
#' a
#' a %/=% b
#' a
#' b
`%/=%` <- function(left, right) 
{
  eval.parent(substitute({left <- left / right}))
}

