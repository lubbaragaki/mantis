# Mantis
Written in hare, goal: a functional shell and scripting language (interpreted)

## Todo
- Write a lambda term evaluation repl
- Add basic types
- Garbage collector
- Handling variables (de brujne indices and whatnot)
- Make it embeddable into hare
- Write it, or optionnally rewrite it, as a freestanding hare program to make it embeddable into a potential OS in hare (as the OS's shell)

## Ideas
- Reading input done using currying, first argument is the prompt, 2nd argument is the source
- Put monads everywhere in the base/standard functions
- Implement a runtime error-handling system
- A whole file containing code should be treated as a lambda expression/abstraction (function) so that functions inside it can use "global variables" using closure relative to the file (function)
