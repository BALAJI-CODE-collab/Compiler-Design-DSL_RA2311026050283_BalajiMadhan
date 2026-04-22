# DSL Compiler

## Description
This project implements a simple DSL compiler using Flex, Bison, and C.

## Tools Used
- Flex
- Bison
- C Language

## Architecture
Input → Lexer → Parser → Output

## Steps to Run
flex lexer.l
bison -d parser.y
gcc lex.yy.c parser.tab.c -o compiler
./compiler < test/input.txt

## Sample Input
x = 5 + 3

## Output
Parsed Successfully

## Author
Your Name
Reg No
