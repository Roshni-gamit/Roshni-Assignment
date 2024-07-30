//Create a  dart pattern
// 1
// 44
// 999
// 161616
// 25252525




void main() {
  int n = 5,numbers; // Total number of rows
  numbers=1;
  for (int i = 1; i <= n; i++) {
    // Calculate the number to print  
    int numberToPrint = i * i; // i * i gives us 1, 4, 9, 16, 25  

    // Print the number `i` times  
    for (int j = 0; j < i; j++) {
      print(numberToPrint);
      numbers++; // Print without new line
    }
    // Move to the next line after printing each row  
    print("");
  }
}  