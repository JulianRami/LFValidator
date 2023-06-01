/**seccion de definiciones**/
%{
#include <stdio.h>
#include <stdlib.h>
extern int yylex(void);
extern FILE *yyin;
void yyerror(char *s);
%}
%token SALC PASDW NAUSE CRED DATR ACUS EMIUS NICK IDAVI USER NAMROLE IDROLE FALSE CCA CCC DOSP COMA ACH CCH DATO INT HABCOM IDU IDHAB IDHABCOM IDHABNAV NAHAB DESHAB ISP PERHAB IDUNAV CMLLS TRUE

/**Seccion de reglas**/
%%
		
linea			: 		
			| linea date {printf("Si es Correcto \n");}

date	:	CCA ACH IDROLE dte NAMROLE DOSP dts COMA USER DOSP CCA ACH IDU dte IDROLE dte IDAVI dte NAUSE DOSP dts COMA NICK DOSP dts COMA EMIUS DOSP dts COMA ACUS DOSP cond COMA CRED DOSP ACH IDU dte PASDW DOSP dts COMA SALC DOSP dts COMA IDUNAV DOSP dts CCH COMA HABCOM DOSP CCA ACH IDU dte IDHAB dte IDHABCOM dte IDHABNAV DOSP ACH IDHAB dte NAHAB DOSP dts COMA DESHAB DOSP dts COMA ISP DOSP cond COMA HABCOM DOSP CCA dts CCC COMA PERHAB DOSP CCA dts  CCC CCH COMA IDUNAV DOSP dts  CCH  CCC CCH CCC CCH CCC

dte : DOSP INT COMA

dts : CMLLS DATO CMLLS

cond : TRUE | FALSE


%%
/**Seccion de codigo de usuario**/
void yyerror(char *s){
	printf("Error: %s\n",s);
}
int main (int argc, char **argv){
	if (argc>1)
		yyin=fopen(argv[1], "rt");
	else
		yyin=stdin;
	yyparse();
	return 0;
}
