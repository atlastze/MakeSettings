%{
#include "parser.h"
%}

%option outfile="scanner.c" header-file="scanner.h"

%%
"+"     { return ADD;    }
"-"     { return SUB;    }
"*"     { return MUL;    }
"/"     { return DIV;    }
"%"     { return MOD;    }
"("     { return LPAREN; }
")"     { return RPAREN; }
\n      { return EOL;    }
[0-9]+  { yylval=atoi(yytext); return NUMBER;        }
[ \t]   { /*ignore whitespace*/                      }
.       { printf("Invalid Character:%c\n", *yytext); }
%%

int yywrap(void){
	return 1;
}
