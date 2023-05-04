%{
#include <stdio.h>
int vow, conso;
%}

%%
[a|e|i|o|u] vow++;
. conso++;
%%

int main() {
    yylex();
    printf("\nvowels : %d\n", vow);
    printf("\nconsonants : %d\n", conso);
}