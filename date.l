%{
#include<stdio.h>
%}
%%
[0-9]{2}[-/][0-9]{2}[-/][0-9]{4} {
 printf("Valid date format\n");
}
.+ {
 printf("Invalid date format\n");
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