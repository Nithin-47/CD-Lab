%{
#include <ctype.h>
#include<stdio.h>
#include<stdlib.h>
%}

%token digit


%%


S: E {printf("\n\n");}
;
E: E '+' T { printf ("+");}
| E '-' T   {printf("-")}
| T
;
T: T '*' F { printf("*");}
| T '/' F {printf("/");}
;
F: G '^' F { printf("^");}
| G
;
G: '(' E ')'
| digit {printf("%d", $1);}
;


%%
int main()
{
printf("Enter infix expression: ");
yyparse();
}
yyerror()
{
printf("Error");
}
