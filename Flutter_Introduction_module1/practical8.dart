//8.Write a program to calculate sum of 5 subjects & find the percentage. Subject marks entered by user. 



import 'dart:io';

void main(){


  int n1,n2,n3,n4,n5,sum;
  stdout.write("Enter First Subject Marks:");
  n1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Second Subject Marks:");
  n2 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Third Subject Marks:");
  n3 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Forth Subject Marks:");
  n4 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Fifth Subject Marks:");
  n5 = int.parse(stdin.readLineSync()!);

  sum = n1+n2+n3+n4+n5;
  print("Sum =$sum");

  var percentage = sum/500*100;

  print('percentage is:$percentage');

  
}