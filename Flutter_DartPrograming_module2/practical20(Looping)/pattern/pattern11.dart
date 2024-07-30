//11. create a pattern  1
//                      2 3
//                      4 5 6
//                      7 8 9 10
//                      11 12 13 14 15


import 'dart:io';
void main() {
  int i, j, numbers=1, n = 5;
  for(i=1;i<=n;i++){

    for(j = 1; j<i+1;j++)
    {
      stdout.write('${numbers++} ');

    }
    stdout.writeln();
  }
}