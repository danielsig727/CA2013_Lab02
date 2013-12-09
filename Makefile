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
	rm -rf handin
directories:
	mkdir -p demo_out
	mkdir -p m2sout
gen-handin:
	mkdir -p handin/0250187/ring
	cp ring/cpu-config ring/mem-config ring/net-config handin/0250187/ring
	cd handin; tar czvf 0250187.tar.gz 0250187

