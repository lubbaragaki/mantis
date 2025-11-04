# Mantis

## Todo

1. Specification
    - Brainstorm a few examples
    - Specify syntax
    - Specify lexical analysis
2. Abstract Syntax Tree
    - Define lambda-calculus data structures
    - Implement de Bruijn indices
    - Implement a term evaluation engine
    - Implement type-checking
    - Define the basic data types
        > Integer
        > Boolean
        > Character
        > String
        > Constant
        > Float
    - Implement a repl to test the language
3. Front
    - Implement first part of the compiler (lexical, syntax and semantic analysis, compile time error-handling)
    - Implement parser to convert a list of tokens into AST
    -- Ensure these steps are done in a way that allows modularity to be able to extend and modify the language later
4. Type theory
    - Add support for dependent types, needs more research on the topic first
    - Universe type (for metaprogramming?), needs research
    - Add support for inductive types
    - Add type inference
    - Implement full definitional equality
5. Second-half of the compiler
    - Add garbage collection
    - Implement code generation (generated code is C code)
    - Run C compiler
6. Proof assistant
    - Add a pretty printer
    - Implement a tactic framework or hole mechanism

## Ideas

- Reading input done using currying, first argument is the prompt, 2nd argument is the source
- Put monads everywhere in the base/standard functions
- Implement a runtime error-handling system
- A whole file containing code should be treated as a lambda expression/abstraction (function) so that functions inside it can use "global variables" using closure relative to the file (function)
