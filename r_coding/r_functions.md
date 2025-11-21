`function()`

Functions are stored as R objects of the class function

"first class objects"

Functions can be passed as arguments to other functions

Functions can be nested so that you can define inside of another function.

Functions have named arguments

`formals` arguments are included inside the function definition

Argument matching -- positionally or by name
- You can reverse the order of named arguments.
- But don't mess with that too much because it's confusing

** `...` argument: ** indicates a variable number of arguments that are usually passed on to other functions
- Generic functions use `...` so that extra arguments can be passed to methods.
- `...` is also necessary when the number of arguments passed to the function cannot be known in advance.
- Any arguments after the `...` must be named explicitly and cannot be partially matched.

