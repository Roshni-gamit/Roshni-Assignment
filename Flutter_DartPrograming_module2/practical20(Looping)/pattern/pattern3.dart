//3.  // create a pattern    1
// //                        22
// //                        333
// //                        4444
// //                        55555


import 'dart:io';

void main(){

  int num = 5;

  for(int i=1; i<=num;i++){
    for (int j=0;j<i; j++){
      stdout.write("$i");
    }
    print(" ");
  }
}