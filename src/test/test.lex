package test;
import java_cup.runtime.*;  
%% 
%{  
/*-*  * funcoes e variaveis  */  

	private void imprimir(String descricao, String lexema) {   
		System.out.println(lexema + " - " + descricao);
	}  

%}  

/*-*  * informacoes sobre a classe gerada  */  

%public 
%class Exemplo 
%type void   
/*-*  * definicoes regulares  */ 
DDI = 55 | "+"55
OP = [10-99] | ("("[10-99]")")
BRANCO = [\n| |\t]   
ID = [_|a-z|A-Z][a-z|A-Z|_]*
DIGITO = [0-9]
DDDES = 2[7|8] | ("("2[7|8]")")
DDDBA = 71 | 7[3-5] | ("("7[3-5]")") | "("71")"   
DDDAC = 68 | ("("68")")
DDDPE = 81 | ("("8[3-8]")") | ("("81")") 
DDDAM = 9[2|7] | ("("9[2|7]")")
DDDAL = 82 | ("("82")")
DDDAP =  96 | ( "("96")")
DDDCE =  8[5|8] | ( "("8[5|8]")")
DDDDF =  61 | ( "("61")")
DDDCE =  8[5|8] | ( "("8[5|8]")")
DDDGO =  6[2|4] | ( "("6[2|4]")")
DDDMA = 9[8|9] | ( "("9[8|9]")")
DDDMG = 3[1-8] | ( "("3[1-8]")")
DDDMS = 67 | ("("67")")
DDDMT =  6[5|6] | ( "("6[5|6]")")
DDDPA =  9[1|3|4] | ( "("9[1|3|4]")")
DDDPR =  4[1-6] | ("("4[1-6]")")
DDDPB =  83 | ( "("83")")
DDDPI =  8[6|9] | ( "("8[6|9]")")
DDDRJ =  2[1|2|4] | ( "("2[1|2|4]")")
DDDRN =  84 | ( "("84")")
DDDRO =  69 | ( "("69")")
DDDRR =  95 | ( "("95")")
DDDRS =  5[1|3|4|5] | ( "("5[1|3|4|5]")")
DDDSC =  4[8|7|8] | ( "("4[8|7|8]")")
DDDSE =  79 | ( "("79")")
DDDSP =  1[1-8] | ( "("1[1-8]")")
DDDTO =  63 | ( "("63")")

NUMEROS_VALIDOS = {DIGITO}{DIGITO}{DIGITO}{DIGITO}[-?|.?]?{DIGITO}{DIGITO}{DIGITO}{DIGITO}  

%%  
  
{BRANCO}    			    { imprimir("Branco", yytext()); }    
{ID}						     { imprimir("Idontificador", yytext()); }
{NUMEROS_VALIDOS}  					   { imprimir("Numero sem DDD e operadora", yytext()); }
{DDI}                { imprimir("Insira número e DDD", yytext()); }
{DDI}?{NUMEROS_VALIDOS}  { imprimir("Número sem DDD", yytext()); }
{DDI}?{OP}?{DDDPE}?{NUMEROS_VALIDOS}         { imprimir("Numero do estado de Pernambuco", yytext()); }       
{DDI}?{OP}?{DDDAC}?{NUMEROS_VALIDOS}         { imprimir("Numero do estado do Acre", yytext()); }
{DDI}?{OP}?{DDDBA}?{NUMEROS_VALIDOS}         { imprimir("Numero do estado de Bahia", yytext()); }
{DDI}?{OP}?{DDDAM}?{NUMEROS_VALIDOS}         { imprimir("Numero do estado do Amazonas", yytext()); }
{DDI}?{OP}?{DDDAL}?{NUMEROS_VALIDOS}         { imprimir("Numero do estado de Alagoas", yytext()); }
{DDI}?{OP}?{DDDAP}?{NUMEROS_VALIDOS} { imprimir("Número do estado do amapá", yytext());}
{DDI}?{OP}?{DDDCE}?{NUMEROS_VALIDOS} { imprimir("Número do estado do Ceará", yytext());}
{DDI}?{OP}?{DDDDF}?{NUMEROS_VALIDOS} { imprimir("Número do Distrito Federal", yytext());}
{DDI}?{OP}?{DDDES}?{NUMEROS_VALIDOS} { imprimir("Número do estado do espírito Santo", yytext());}
{DDI}?{OP}?{DDDGO}?{NUMEROS_VALIDOS} { imprimir("Número do estado de Goias", yytext());}
{DDI}?{OP}?{DDDMA}?{NUMEROS_VALIDOS} { imprimir("Número do estado do Maranhão", yytext());}
{DDI}?{OP}?{DDDMT}?{NUMEROS_VALIDOS} { imprimir("Número do estado do Mato Grosso", yytext());}
{DDI}?{OP}?{DDDMS}?{NUMEROS_VALIDOS} { imprimir("Número do estado de Mato Grosso do sul", yytext());}
{DDI}?{OP}?{DDDMG}?{NUMEROS_VALIDOS} { imprimir("Número do estado de Minas Gerais", yytext());}
{DDI}?{OP}?{DDDPA}?{NUMEROS_VALIDOS} { imprimir("Número do estado do Pará", yytext());}
{DDI}?{OP}?{DDDPB}?{NUMEROS_VALIDOS} { imprimir("Número do estado da Paraíba", yytext());}
{DDI}?{OP}?{DDDPI}?{NUMEROS_VALIDOS} { imprimir("Número do estado do Piauí", yytext());}
{DDI}?{OP}?{DDDPR}?{NUMEROS_VALIDOS} { imprimir("Número do estado do Paraná", yytext());}
{DDI}?{OP}?{DDDRJ}?{NUMEROS_VALIDOS} { imprimir("Número do estado do Rio de Janeiro", yytext());}
{DDI}?{OP}?{DDDRN}?{NUMEROS_VALIDOS} { imprimir("Número do estado do Rio Grande do Norte", yytext());}
{DDI}?{OP}?{DDDRO}?{NUMEROS_VALIDOS} { imprimir("Número do estado de Rodônia", yytext());}
{DDI}?{OP}?{DDDRR}?{NUMEROS_VALIDOS} { imprimir("Número do estado do Roraima", yytext());}
{DDI}?{OP}?{DDDRS}?{NUMEROS_VALIDOS} { imprimir("Número do estado do Rio Grande do Sul", yytext());}
{DDI}?{OP}?{DDDSC}?{NUMEROS_VALIDOS} { imprimir("Número do estado de Santa Catarina", yytext());}
{DDI}?{OP}?{DDDSE}?{NUMEROS_VALIDOS} { imprimir("Número do estado de Sergipe", yytext());}
{DDI}?{OP}?{DDDSP}?{NUMEROS_VALIDOS} { imprimir("Número do estado de São Paulo", yytext());}
{DDI}?{OP}?{DDDTO}?{NUMEROS_VALIDOS} { imprimir("Número do estado do Tocantins", yytext());}
.* 						    { imprimir("Número inválido", yytext()); } 
