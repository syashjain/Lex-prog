%{
#include<stdio.h>
%}
%%
[a-zA-Z0-9]+([+\-*/][a-zA-Z0-9]+)* {
 printf("Valid expression\n");
}
.+ {
 printf("Invalid expression\n");
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