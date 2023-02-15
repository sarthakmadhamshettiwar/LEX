%{
    int in_comment = 0;
%}

%%

"/*"            { in_comment = 1; }
"*/"            { in_comment = 0; }
[ \t\r\n]+      { if (in_comment) printf(" "); }
.               { if (in_comment) printf("%c", yytext[0]); }

%%

int yywrap()
{
	return 1;
}


int main(int argc, char** argv) {
//only commented code will get printed.
    yylex();
    return 0;
}
