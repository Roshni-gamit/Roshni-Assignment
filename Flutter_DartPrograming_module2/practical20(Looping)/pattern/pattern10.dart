//10. create a pattern    1
//                        0  1
//                        1  0  1
//                        1  0  1  0
//                        1  0  1  0  1


import 'dart:io';

// void main() {
//   int i,j,n,a;
//   a=5;
//   for (i=1; i<=n; i++){
//     for(j=1;j<=i;j++){
//       if((i+j)%2==0){
//         stdout.write("0");
//         a++;
//       }
//       else
//         {
//           stdout.write("1");
//         }
//       print("");
//     }
//   }
//
// }

void main() {
  int n = 5;

  // Total number of rows

  for (int i = 0; i < n; i++) {
    // Print leading spaces for alignment
    for (int j = 0; j < n - i - 1; j++) {
      print(" ");
    }

    // Print the alternating pattern of 1s and 0s
    for (int k = 0; k <= i; k++) {
      // Print 1 if k is even, otherwise print 0
      if (k % 2 == 0) {
        print(1);
      } else {
        print(0);
      }
    }

    // Move to the next line
    print("");
  }
}
