%{
    int int_count = 0;
%}

%%

int             { int_count++; printf("float");}
[A-Za-z]+      { for(int i=0;i<5;i++){
                    if printf("%c",yytext[0]); }
[ \t\r\n]      { printf("%c",yytext[0]); }
=               { printf("%c",yytext[0]); }
.               ;

%%

int yywrap()
{
}

int main(int argc, char** argv) {
    yylex();
    printf("Int count: %d\n", int_count);
    return 0;
}
