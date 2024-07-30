//9.  create a pattern  1
//                     2 2
//                    3 3 3
//                   4 4 4 4
//                  5 5 5 5 5

import 'dart:io';

void main(){
  int numbers,row = 5;
  for(int i = 0 ; i<row; i++)
  {
   numbers=1;
    //for(int j=(row-i);j>=0;j--)
     for (int j = 1; j <= row - i; j++){
      stdout.write(" ");

    }
    //for(int j = 0;j<=i;j++)
     for (int k = 1; k <= i; k++)
     {
      stdout.write("$numbers ");
       numbers ++;


    }
    print(" ");
  }
}