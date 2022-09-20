#include<stdio.h>
int main(){
  int n, c;
  long long int arr = (long long int)(0U-1)<<32;
  if(scanf("%d %d\n", &n, &c)==2){
    while(n--){
      long long int a;
      char t = getchar()-'0';
      int res = 0;
      scanf("%lld\n", &a);
      a+= a<<32;
      switch(t){
        case 1: arr&= a; break;
        case 2: arr|= a; break;
        case 3: arr^= a; break;
      }
      res = (c&(arr>>32)) + ((~c)&arr);
      printf("%d\n", res);
      c = res;
    }
  }
  return 0;
}
