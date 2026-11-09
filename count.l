%{
#include<stdio.h>
int l=0,s=0,t=0;
%}
%%
\n {l++;}
" " {s++;}
\t {t++;}
. ;
%%
int main()
{
 yylex();
 printf("Lines: %d\nSpaces: %d\nTabs: %d\n",l,s,t);
 return 0;
}
int yywrap()
{
 return 1;
}