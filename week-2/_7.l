%{
#include <stdio.h>
int chars, words, spaces, lines;
%}

%%
[ ] spaces++;
\n lines++;
[0-9a-zA-Z] chars++;
[0-9A-Za-z]+ {
    words++;
    chars += strlen(yytext);
}
%%

int main() {
    yylex();
    printf("no. of spaces = %d", spaces);
    printf("no. of words = %d", words);
    printf("no. of chars = %d", chars);
    printf("no. of lines = %d", lines);
}