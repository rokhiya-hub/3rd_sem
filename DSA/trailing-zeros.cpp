#include<bits/stdc++.h>

using namespace std;

int main(){
    long long n;
   cin >> n;
   long long  cnt =0;
   long long p=5;
   while(p<=n)
   {
    cnt+=n/p;
    p*=5;
   }
   cout << cnt;
}