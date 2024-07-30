//8.Write a program to find out the max from given number (E.g. No: -1562 Max number is 6


void main() {
  List list = [1, 5, 6, 2];
  print(list.reduce((curr, next) => curr > next ? curr : next));
}