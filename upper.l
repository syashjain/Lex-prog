%{
#include<stdio.h>
%}
%%
[A-Z]+ { printf("Uppercase word: %s\n",yytext); }
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