all: hello prog
hello:
	gcc -o hello hello.c
prog:
	gcc -o prog prog.c
clean:
	rm -rf hello prog
install:
	sudo cp hello prog /usr/bin
uninstall:
	sudo rm -rf /usr/bin/hello /usr/bin/prog

