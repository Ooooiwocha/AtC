MOD = 998244353;

n, m = map(int, input().split());
a, b, c, d, e, f = map(int,input().split());
di = [[a, b], [c, d], [e, f]];
st = set();
for i in range(m):
  x, y = map(int, input().split());
  st.add((x, y));

dp = [[[0 for i in range(301)]for j in range(301)]for k in range(301)];
dp[0][0][0] = 1;
ans = 0;
for i in range(0, 301):
  for j in range(0, 301):
    for k in range(301-i-j):
      tx = i*di[0][0] + j*di[1][0] + k*di[2][0];
      ty = i*di[0][1] + j*di[1][1] + k*di[2][1];
      if (tx, ty) not in st:
        dp[i][j][k]+= dp[i-1][j][k] if 0 < i else 0;
        dp[i][j][k]+= dp[i][j-1][k] if 0 < j else 0;
        dp[i][j][k]+= dp[i][j][k-1] if 0 < k else 0;
        dp[i][j][k]%= MOD;
      if i+j+k == n:
        ans+= dp[i][j][k];
        ans%= MOD;
print(ans);
