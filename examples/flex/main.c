#include <stdio.h>
#include <stdlib.h>

extern int chars, words, lines; 
extern int yylex( void );

int main( int argc, char ** argv )
{
    yylex();
    printf( "chars:%d\nwords:%d\nlines:%d\n", chars, words, lines);
    exit( 0 );
}
