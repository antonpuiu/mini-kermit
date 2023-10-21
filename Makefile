all: build 

build: ksender kreceiver

link_emulator/lib.o: link_emulator/lib.c
	gcc -Wall -g -c $? -o $@

ksender: ksender.o link_emulator/lib.o
	gcc -g ksender.o link_emulator/lib.o -o ksender

kreceiver: kreceiver.o link_emulator/lib.o
	gcc -g kreceiver.o link_emulator/lib.o -o kreceiver

.c.o: 
	gcc -Wall -g -c $? 

clean:
	-rm -f *.o ksender kreceiver link_emulator/*.o
