//9. Write a program make a summation of given number  (E.g. 1523 ans :-11)

int sumUsingLoop(List<int> numbers) {
  int sum = 0;
  for (int number in numbers) {
    sum += number;
  }
  return sum;
}

void main() {
  List<int> numbers = [1, 5, 2, 3];
  int result = sumUsingLoop(numbers);
  print('Sum of numbers: $result');
}
