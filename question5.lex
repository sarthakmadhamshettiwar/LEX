%{
    int in_comment = 0;
%}


%%
"/*"            { in_comment = 1; printf(""); }
"*/"            { in_comment = 0; printf(""); }
[ \t\r\n]+      { if (!in_comment) printf(" "); }
.               { if (!in_comment) printf("%c", yytext[0]); }
%%


int yywrap()
{
	return 1;
}
int main(int argc, char** argv) {

    yylex();
    return 0;
    
}
