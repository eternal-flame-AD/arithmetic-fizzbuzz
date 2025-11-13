# Pure arithmetic, branchless FizzBuzz

Future of Computing challenge for FizzBuzz with "no conditionals, no booleans, no pattern matching, and no disguised booleans".

Contains both a Python truth table based solution and a Rust stright line "letter of the law" solution.

# Demo

Note: since there is no way to check for IO errors, the program will segfault if the output pipe is closed or cannot be written to.

```sh
> cargo run --release | head -n 30
1
2
Fizz
4
Buzz
Fizz
7
8
Fizz
Buzz
11
Fizz
13
14
FizzBuzz
16
17
Fizz
19
Buzz
Fizz
22
23
Fizz
Buzz
26
Fizz
28
29
FizzBuzz

fish: Process 2934041, 'cargo' from job 1, 'cargo run --release | head -n 30' terminated by signal SIGSEGV (Address boundary error)
```

# Benchmark

```sh
 target/release/arithmetic-fizzbuzz | pv -S --size 1g --line-mode >/dev/null
1.07G 0:00:06 [ 156M/s] [===============>] 100%
fish: Process 2937523, 'target/release/arithmetic-fizzbuzz' from job 1, 'target/release/arithmetic-fizzb…' terminated by signal SIGSEGV (Address boundary error)
```
