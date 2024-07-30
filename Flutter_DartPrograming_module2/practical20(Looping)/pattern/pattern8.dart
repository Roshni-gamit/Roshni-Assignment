//8.  create a pattern  1
//                     1 2
//                    1 2 3
//                   1 2 3 4
//                  1 2 3 4 5

import 'dart:io';

void main(){
  int numbers,row = 5;
  for(int i = 0 ; i< row; i++)
  {
    numbers=1;
    for(int j=(row-i);j>=0;j--){
      stdout.write(" ");

    }
    for(int j = 0;j<=i;j++)
    {
      stdout.write("$numbers ");
      numbers ++;

    }
    print(" ");
  }
}