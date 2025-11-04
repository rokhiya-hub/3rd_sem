#include<bits/stdc++.h>
using namespace std;
int main()
{
    int t;
    cin>>t;
    while(t--)
    {
        int n,m,x,y;
        cin>>n>>m>>x>>y;
        vector<int>a(n);
        vector<int>b(m);
        for(int i=0;i<n;i++)
        {
            cin>>a[i];
        }
        for(int i=0;i<m;i++)
        {
            cin>>b[i];
        }
        int hc = upper_bound(a.begin(),a.end(),y-1)-a.begin();
        int vc = upper_bound(b.begin(),b.end(),x-1)-b.begin();
        cout<<hc+vc<<endl;
    }
}