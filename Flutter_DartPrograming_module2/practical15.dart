// 15. Write a program to find the Max number from the given three number using Nested If

void main(){

  int a = 20 , b= 60 , c= 50 ,max;

  if(a>b){
    if(a>c)
      max=a;
    else
      max=c;

  }else{
    if(b>c)
      max=b;
    else
      max= c;
  }
  print('Maximum number is:$max');

}