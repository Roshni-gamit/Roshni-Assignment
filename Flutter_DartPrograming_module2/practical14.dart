//14. Write a program to find the Max number from the given three number using Ternary Operator


void main() {
  int num1 = 10;
  int num2 = 15;
  int num3 = 35;
  int max = 0;
  max = (num1 > num2) ? (num1 > num3 ? num1 : num3) : (num2 > num3 ? num2 : num3);
  print("The greatest number is $max");
}
