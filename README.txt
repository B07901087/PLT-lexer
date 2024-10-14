Team: (Name, UNI)
Pei-Huan Tsai, pt2630

Requirement:
C++11 compiler
I ran the program on mac


How to compile and run the sample program:
> bash init.sh
> make run

How to run all programs:
> bash execute_all_to_stdout.sh
or 
> bash execute_all_to_files.sh


***** Note *****
When there are invalid tokens or characters in the input file, the 'make' command will return an error. However, this is intentional and not a bug in the code.



Different input files and what is their purpose of testing
1. input1.hl: test the example language in my proposal
2. input2.hl: test more keywords (if, else) and operators
3. input3.hl: test error handling (invalid character: @@)
4. input4.hl: test error handling (invalid token: ++, 123a)
5. input5.hl: simple program for generating hardware directly

How to test?
1. make clean
2. To test different input and view the result from the screen: (recommended)
    make in<num>
3. To dump the output result to the output<num>.txt:
    make file<num>

The expected results are shown in gold/
Note that the warning or error will still output on the screen even using "make file<num>" option.
Note that the comment line (starting with "//") is filtered, that line won't be parsed as tokens