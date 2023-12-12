%{
    #include<stdio.h>
    #include<string.h>
    #include<stdlib.h>

    char str1[200];

%}



%%
[0-9]*[1][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9] {printf("10th symbol is 1\n");}
.* {printf("1oth symbol is not 1");}

%%



void main()
{
    printf("Enter the input:");
    yylex();
}


int yywrap()
{}