Prime Number Generator Coding Exercise
=======
Objectives: 
1. Create prime number generator using test driven development (TDD)
2. All unit tests must pass
3. Generator lists all prime numbers in a given range, including endpoints
4. Generator accepts inverse ranges as equal (10..1 == 1..10)
5. Generator validates primes (7900..7920)
6. Can run prime number generator via main program and command line

Extra:
Program lists position of each prime number (eg. 7919 is prime number 1000)
---------
**Running the program:**

Before running the program, first navigate to it via terminal or cmd (excuse the naming):

    cd RubymineProjects
    cd Codechallengeprime

Next, enter 'ruby main.rb' with two arguments to generate a list of prime numbers within that range.
This will run the prime number generator via a seperate program (main.rb).
e.g:
     
    ruby main.rb 1, 5
    
    2 is prime number 1  
    3 is prime number 2
    5 is prime number 3

To run the program without the main.rb file, navigate back into the project again and enter the following:

    cd lib
    ruby -r "./primegen.rb" -e"Primealpha.run 1,5"

Congratulations! Yay prime numbers!
-----------