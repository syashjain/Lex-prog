%{
#include<stdio.h>
%}
%%
int[ ]+[a-zA-Z_][a-zA-Z0-9_]*(,[ ]*[a-zA-Z_][a-zA-Z0-9_]*)*; {
 printf("Valid declaration\n");
}
.+ {
 printf("Invalid declaration\n");
}
%%
int main()
{
 yylex();
 return 0;
}
int yywrap()
{
 return 1;
}