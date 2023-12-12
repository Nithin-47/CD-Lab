%{
    #include<stdio.h>
    #include<string.h>
    #include<stdlib.h>

    char str1[200];

%}



%%
[0-9]*[222][0-9]* {printf("cons 222 present\n");}
.* {printf("cons 222 not present");}

%%



void main()
{
    printf("Enter the input:");
    yylex();
}


int yywrap()
{}