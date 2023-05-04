%{
#include<stdio.h>
int nc=0;
%}

%%
"/*"[a-zA-Z0-9\n\t ]*"*/"  {nc++;}
"//"[a-zA-Z0-9\t ]*"\n"   {nc++;}
%%

int main(int argc ,char* argv[]) {
	yyin=fopen("input.txt","r");
	yyout=fopen("output.txt","w");
	yylex();
	printf("The number of comment lines=%d\n",nc);
	fclose(yyin);
	fclose(yyout);
}