//9.Write a Program to show swap of two No's without using third variable.

void main(){


  int n1 = 10;
  int n2 = 20;

  print('n1=$n1, n2=$n2');

  n1 =n1+n2;
  n2 = n1-n2;

  n1= n1-n2;
  print('n1=$n1 ,n2=$n2');

}