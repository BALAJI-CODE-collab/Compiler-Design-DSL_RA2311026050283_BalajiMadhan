%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(const char *s);
int yylex();
%}

%token NUMBER ID PLUS MUL ASSIGN

%%
stmt: ID ASSIGN expr { printf("Parsed Successfully\n"); }
    ;

expr: expr PLUS term
    | term
    ;

term: term MUL factor
    | factor
    ;

factor: NUMBER
      | ID
      ;
%%

void yyerror(const char *s) {
    printf("Error: %s\n", s);
}

int main() {
    printf("Enter expression:\n");
    yyparse();
    return 0;
}
