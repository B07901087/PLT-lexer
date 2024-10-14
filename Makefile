.PHONY: clean all in1 in2 in3 in4 in5 file1 file2 file3 file4 file5

scanner: scanner.cpp
	g++ -std=c++11 -o scanner scanner.cpp -Wall

dbg: scanner.cpp
	g++ -std=c++11 -o scanner scanner.cpp -Wall -g

clean:
	rm -f scanner
	rm -f outputs/*

run: scanner
	./scanner

all_files: scanner file1 file2 file3 file4 file5

all: scanner in1 in2 in3 in4 in5

file1: scanner
	./scanner inputs/input1.hl -o outputs/output1.txt
file2: scanner
	./scanner inputs/input2.hl -o outputs/output2.txt
file3: scanner
	./scanner inputs/input3.hl -o outputs/output3.txt
file4: scanner
	./scanner inputs/input4.hl -o outputs/output4.txt
file5: scanner
	./scanner inputs/input5.hl -o outputs/output5.txt

in1: scanner
	./scanner inputs/input1.hl
in2: scanner
	./scanner inputs/input2.hl
in3: scanner
	./scanner inputs/input3.hl
in4: scanner
	./scanner inputs/input4.hl
in5: scanner
	./scanner inputs/input5.hl
