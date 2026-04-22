%{
#include "parser.tab.h"
%}

%%
[0-9]+      { return NUMBER; }
[a-zA-Z]+   { return ID; }
"+"         { return PLUS; }
"*"         { return MUL; }
"="         { return ASSIGN; }
[ \t]       ;
\n          { return 0; }
.           { printf("Invalid character: %s\n", yytext); }
%%
