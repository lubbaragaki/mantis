# Mantis
Written in hare, goal: a functional shell and scripting language (interpreted).

## Structure
Desugaring -> tokenizer -> typing/checking -> compile to bytecode -> interpret bytecode(VM)

## Features
A built in library for linux executables that uses algebraic effects and handlers. Pure functional programming that allows easier reasoning with composability through higher order functions. Simple, easy syntax. Flexible and powerful enough to create even more complex programs than just scripts. Aims to make automations/devops scripting more robust and error-prone with the functional programming paradigm (immutability, referential transparency, no side effects, ...) and a strong, static type system.

## Why algebraic effects?
Becomes then you can write "resumable" error-handling, it is basically a new way of implementing control flow structures like iterators, async/await and exceptions.

## Todo
- A basic repl that outputs the AST (Desugaring -> tokenizer -> pretty printer)
