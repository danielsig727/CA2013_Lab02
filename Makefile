.phony: clean
all: directories
	gcc -m32 HelloWorld.c -o HelloWorld
demo:
	CONFIG_NAME=./example REPORT_NAME=./demo_out ./Run.sh
sim:
	CONFIG_NAME=./ring REPORT_NAME=./m2sout ./Run.sh
clean:
	rm HelloWorld
	rm -rf m2sout
	rm -rf demo_out
directories:
	mkdir -p demo_out
	mkdir -p m2sout
