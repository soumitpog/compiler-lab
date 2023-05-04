%{
 #include<stdio.h>
 int id=0;
%}
%%
[a-zA-Z][a-zA-Z0-9_]* { id++ ; ECHO; printf(“\n”);}
.+ { ;}
\n { ;}
%%
int yywrap()
{
return 1;
}
main (int argc, char *argv[])
{
 yylex();
 printf(“No of identifiers = %d\n”,id);
} 