# Mantis
Written in hare, goal: a functional shell and scripting language (interpreted).

## Structure
- A JIT-compiler that generates a fully annotated (type) lambda-calculus-like Intermediate Representation.
- An "interpreter engine" that runs said intermediate representation. This effectively moves the type inference and type checking to the JIT phase, allowing the final production script to run without that performance overhead. Since it is a scripting language, performance isn't a priority (which is why it's not compiled, also I don't want to write code generation).
  
## Todo
- THe interpreter engine comes first

## Ideas
- Reading input done using currying, first argument is the prompt, 2nd argument is the source
- Put monads everywhere in the base/standard functions
- Implement a runtime error-handling system
- A whole file containing code should be treated as a lambda expression/abstraction (function) so that functions inside it can use "global variables" using closure relative to the file (function)
