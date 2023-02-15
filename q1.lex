%{
    int characters = 0;
    int words = 0;
    int lines = 0;
%}

%%

[\n]+      { lines++; words++; }
[A-Za-z]+      { characters += yyleng; words++; }
.               { characters++; }

%%

int yywrap()
{
	return 1;
}

int main(int argc, char** argv) {
    yylex();
    printf("Lines: %d\nWords: %d\nCharacters: %d\n", lines, words, characters);
    return 0;
}
