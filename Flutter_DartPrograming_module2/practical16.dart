//16. Write a program user enter the 5 subjects mark. You have to make a total and find the percentage. percentage > 75 you have to print “Distinction” percentage > 60 and percentage <= 75 you have to print “First class” percentage >50 and percentage <= 60 you have to print “Second class” percentage > 35 and percentage <= 50 you have to print “Pass class” Otherwise print “Fail”

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


  if(percentage > 75)
  {
    print("Congratulation!! ,You have Distinction");
  }
  else if(percentage > 65 && percentage <=75)
  {
    print("Congratulation!! ,You have First Class");
  }
  else if(percentage > 50 && percentage <=60)
  {
    print("Congratulation!! ,You Have Second Class");
  }
  else if(percentage > 35 && percentage<=50)
  {
    print("Congratulation!! ,You Have Pass Class");
  }
  else
  {
    print("Sorry,You are Fail");
  }


}