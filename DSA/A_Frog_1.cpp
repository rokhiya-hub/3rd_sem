#include<iostream>
using namespace std;
int solve(int i,int arr,int n,int pick1,int pick2)
{
    if(idx==n)
    return min(pick1,pick2);
    if(idx<=n-1)
    {
        pick1=h[i]-h[i+1];
        if(idx)
    }

}
int main()
{
    int n;
    cin>>n;
    int a[i];
    for(int i=0;i<n;i++)
    {
        cin>>a[i];
    }
    cout<<solve(0,a,n-1,0,0);
}