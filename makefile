all: trabalho stringsteste.roo
	./trabalho < stringsteste.roo > gerado.cc
	./gabarito/gabarito < gerado.cc
	g++ -o saida gerado.cc
	./saida

lex.yy.c: trabalho.lex
	lex trabalho.lex

y.tab.c: trabalho.y
	yacc -v trabalho.y

trabalho: lex.yy.c y.tab.c
	g++ -o trabalho y.tab.c -lfl
