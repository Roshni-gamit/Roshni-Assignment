//4. Write a program you have to find the factorial of given number.

import 'dart:io';

void main() {
  print('Enter Number:');
  int N = int.parse(stdin.readLineSync()!);

  int result = 1;
  for (int i = 1; i <= N; i++) {
    result *= i;
  }

  print('Factorial of $N');
  print(result);
}