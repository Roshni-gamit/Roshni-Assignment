//7.Write a program to print the number in reverse order.

import 'dart:io';

void main(){

  int n,r,rev;

  stdout.write("Enter a Number:");
  n=int.parse(stdin.readLineSync().toString());

  rev=0;
  while(n !=0){
    r= n%10;
    rev= (rev * 10)+r;
    n=n~/10;
  }
  print("Reverse of number is:$rev");
}
