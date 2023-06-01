bison -d validator.y
flex validator.l
gcc -o app.exe validator.tab.c lex.yy.c -lfl
./app.exe pruebaFallo2.json
