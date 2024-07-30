//6. create a pattrn        1
//                         22
//                        333
//                       4444
//                      55555




import 'dart:io';

void main(){
  int numbers,row = 5;
  for(int i = 0 ; i< row; i++)
  {
    numbers=1;
    for(int j=2*(row-i);j>=0;j--){
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
