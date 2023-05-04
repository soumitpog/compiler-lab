%{
#include <stdio.h>
int ve, ng, ve_frac, ng_frac;
%}

%%
[+]?[0-9]+ ve++;
[-][0-9]+ ng++;
[+]?[0-9]+[/][0-9]+ ve_frac++;
[-][0-9]+[/][0-9]+ ng_frac++;
%%

int main() {
    yylex();
    printf("no. of +ve = %d", ve);
    printf("no. of -ve = %d", ng);
    printf("no. of +ve frac = %d", ve_frac);
    printf("no. of -ve frac = %d", ng_frac);
}