CC = gcc
#The -Ofast might not work with older versions of gcc; in that case, use -O2
CFLAGS = -lm -pthread -Ofast -march=native -Wall -funroll-loops -Wno-unused-result

all: term_word2vec  distance 
term_word2vec : term_word2vec.c
	$(CC) term_word2vec.c -o term_word2vec $(CFLAGS)
#word2phrase : word2phrase.c
#	$(CC) word2phrase.c -o word2phrase $(CFLAGS)
distance : distance.c
	$(CC) distance.c -o distance $(CFLAGS)
#word-analogy : word-analogy.c
#	$(CC) word-analogy.c -o word-analogy $(CFLAGS)
#compute-accuracy : compute-accuracy.c
#	$(CC) compute-accuracy.c -o compute-accuracy $(CFLAGS)
#	chmod +x *.sh

clean:
	rm -rf term_word2vec distance 
