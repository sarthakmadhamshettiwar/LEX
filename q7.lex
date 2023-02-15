%{
#include <ctype.h>
%}

%option noyywrap

%%

[a-z]  { printf("%c", toupper(yytext[0])); }
.      { printf("%c", yytext[0]); }

%%

int main(int argc, char** argv) {
    yylex();
    return 0;
}
