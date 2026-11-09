%{
#include<stdio.h>
%}
%%
[a-zA-Z_][a-zA-Z0-9_]*[ ]*\([^;]*\) {
 printf("Function declaration/call: %s\n",yytext);
}
. ;
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