truth = {
    0: "FizzBuzz",
    3: "Fizz",
    6: "Fizz",
    9: "Fizz",
    12: "Fizz",
    5: "Buzz",
    10: "Buzz",
}

n = 0

while True:
    n += 1
    print(truth.get(n % 15, str(n)))