%{
#include<stdio.h>
%}
%%
SELECT[ ]+[a-zA-Z_][a-zA-Z0-9_]*[ ]+FROM[ ]+[a-zA-Z_][a-zA-Z0-9_]*[ ]+WHERE[ ]+[a-zAZ_][a-zA-Z0-9_]*[ ]*[><=][ ]*[0-9]+; {
 printf("Valid SQL SELECT statement\n");
}
.+ {
 printf("Invalid SQL statement\n");
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