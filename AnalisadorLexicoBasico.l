%option noyywrap
%{
	#include<stdio.h>
%}
BINARIO    [0-1]+
ENTERO     [0-9]+
MINUSCULAS [a-z]+
MAYUSCULAS [A-Z]+
VOCAB "carro"|"casa"|"computador"|"telefono"|"cable"|"celular"|"pantalla"|"led"|"compilador"|"teclado"|"mouse"|"internet"|"informacion"|"descarga"|"seguridad"|"archivos"
CARACBIN "01100001"|"01100010"|"01100011"|"01100100"|"01100101"|"01100110"|"01100111"|"01101000"|"01101001"|"01101010"|"01101011"|"01101100"|"01101101"|"01101110"|"01101111"|"01110000"|"01110001"|"01110010"|"01110011"|"01110100"|"01110101"|"01110110"|"01110111"|"01111000"|"01111001"|"01111010"|"00110000"|"00110001"|"00110010"|"00110011"|"00110100"|"00110101"|"00110110"|"00110111"|"00111000"|"00111001"


%%
{CARACBIN}+	{printf("|caracter en binario|");}
{BINARIO}	{printf("|secuencia binaria|");}
{VOCAB}		{printf("|palabra permitida|");}
{MINUSCULAS}   {printf("|cadena no permitida|");}
{MAYUSCULAS}   {printf("|cadena no permitida|");}
" "		{printf("|espacio|");}
{ENTERO}   {printf("|numero entero|");}



%%

int main()
{
	yyin=stdin;
	yylex();
	return 0;
}

