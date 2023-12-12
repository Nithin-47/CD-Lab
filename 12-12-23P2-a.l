%{
    #include<stdio.h>
    #include<string.h>
    #include<stdlib.h>

    char str1[200];

%}



%%
[0-9]*[00] {printf("ending with 00\n");}
.* {printf("Does not end with 00");}

%%



void main()
{
    printf("Enter the input:");
    yylex();
}


int yywrap()
{}