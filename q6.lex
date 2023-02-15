%{
#include <ctype.h>
%}

%option noyywrap

%%

[A-Z]  { printf("%c", tolower(yytext[0])); }
.      { printf("%c", yytext[0]); }

%%

int main(int argc, char** argv) {
    yylex();
    return 0;
}