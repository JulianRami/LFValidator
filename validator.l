/** Seccion de definiciones**/
%{
#include "validator.tab.h"
%}
/** seccion de reglas**/
digito 			[0-9]
datoCadena	[a-z][a-zA-Z0-9]{0,10}
%%

\[						{return CCA;}
\]						{return CCC;}
:						{return DOSP;}
,						{return COMA;}
\{						{return ACH;}
\}						{return CCH;}
true					{return TRUE;}
false					{return FALSE;}
{datoCadena}			{return DATO;}
{digito}+				{return INT;}
\"saltCredential\"              {return SALC;}
\"password\"                    {return PASDW;}
\"credential\"                  {return CRED;}
\"dateRegister\"                {return DATR;}
\"isActiveUser\"                {return ACUS;}
\"emailUser\"                   {return EMIUS;}
\"nicknameUser\"                {return NICK;}
\"idAvatar\"                    {return IDAVI;}
\"users\"                       {return USER;}
\"nameRole\"                    {return NAMROLE;}
\"idRole\"                      {return IDROLE;}
\"nameUser\"                    {return NAUSE;}
\"habitsCommunities\"		{return HABCOM;}
\"idUser\"				{return IDU;}
\"idHabit\"				{return IDHAB;}
\"idCommunityHabits\"		{return IDHABCOM;}
\"idHabitNavigation\"		{return IDHABNAV;}
\"nameHabit\"				{return NAHAB;}
\"descriptionHabit\"		{return DESHAB;}
\"isPublicHabit\"			{return ISP;}
\"personalHabits\"		{return PERHAB;}
\"idUserNavigation\"		{return IDUNAV;}
\"						{return CMLLS;}
[ \t\n]					{/*ignorar espacios*/}
.						{ printf("Error Lexico: %s\n", yytext); }

%%
/** Seccion de codigo de usuario**/
