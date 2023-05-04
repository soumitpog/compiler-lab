%{
#include<stdio.h>
int sf=0,pf=0;
%}

%%
"scanf"	{ sf++; fprintf(yyout,"readf");}
"printf" { pf++; fprintf(yyout,"writef");}
%%

int main() {
    yyin=fopen("input.txt","r");
    yyout=fopen("output.txt","w");
    yylex();
    printf("Number of scanfs=%d\nNumber of Printf's=%d\n",sf,pf);
}