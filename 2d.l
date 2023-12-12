%{
    #include<stdio.h>
    #include<string.h>
    #include<stdlib.h>

    char str1[200];

%}



%%
1[01]* {for(int i=yylen)}
%%



void main()
{
    printf("Enter the input:");
    yylex();
}


int yywrap()
{}