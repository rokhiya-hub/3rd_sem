#include<bits/stdc++.h>
using namespace std;
#define long long ll

int main(){
    int x;
    cin >> x;
    ll int sum=0;
    ll int n;
    for(int i=0;i<x-1;i++)
    {
        cin >> n;
        sum+=n;
    }
    ll int osum=x*(x+1)/2;
    cout<< osum-sum;


}