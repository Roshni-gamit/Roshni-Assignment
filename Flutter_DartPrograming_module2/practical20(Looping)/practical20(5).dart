//5. Write a program you have to print the Fibonacci series up to user given number

void main() {

  for (int i = 0; i < 10; i++) {
    print(fibonacci(i));
  }
}

int fibonacci(int n) {

  if (n == 0 || n == 1) {
    return n;
  }

  
  return fibonacci(n - 1) + fibonacci(n - 2);
}