%{
#include<stdio.h>
#include<string.h>
%}
%%
[a-zA-Z0-9]+ {
 int i,j,flag=1;
 for(i=0,j=yyleng-1;i<j;i++,j--)
 if(yytext[i]!=yytext[j]) flag=0;
 if(flag) printf("Palindrome\n");
 else printf("Not Palindrome\n");
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