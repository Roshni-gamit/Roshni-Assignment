//11. Write a Program to check the given year is leap year or not.



import 'dart:io';

void main() {
  int year;
  stdout.write('Enter a year:');
  year = int.parse(stdin.readLineSync()!);

  var leap = false;

  if (year % 4 == 0) {
    if (year % 100 == 0) {
      leap = year % 400 == 0;
    }
    else
      leap = true;
    print( '$year is leap year');
  }
  else
    leap = false;
  print( '$year is not leap year');

}
