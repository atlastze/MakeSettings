%{
	int chars = 0;
	int words = 0;
	int lines = 0;
%}

%%
[a-zA-z]+ { words++; chars+= strlen(yytext); }
\n	      { chars++; lines++;                }
.         {	chars++;                         }
%%

int yywrap(){
   return 1;
}
