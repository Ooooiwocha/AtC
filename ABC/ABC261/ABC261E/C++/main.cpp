#include<bits/stdc++.h>
using namespace std;
int main(){
  auto A = [](char a, char b){return a&b;};
  auto O = [](char a, char b){return a|b;};
  auto X = [](char a, char b){return a^b;};
  vector<function<char(char, char)>> ptr = {A, O, X};
  int n, c;
  char arr[30][2];
  for(int i=0; i<30; i++){
    arr[i][0] = 0;
    arr[i][1] = 1;
  }
  if(scanf("%d %d\n", &n, &c)==2){
    while(n--){
      int t, a;
      int res = 0;
      if(scanf("%d %d\n", &t, &a)==2){
        for(int i=0; i<30; i++){
          arr[i][0] = (ptr[t-1])(arr[i][0], (char)(a>>i)&1);
          arr[i][1] = (ptr[t-1])(arr[i][1], (char)(a>>i)&1);
          res+= (1<<i)*arr[i][(c>>i)&1];
        }
        printf("%d\n", res);
        c = res;
      }
    }
  }
  return 0;
}
