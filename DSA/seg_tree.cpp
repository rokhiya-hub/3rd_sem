#include<bits/stdc++.h>
using namespace std;

class SegmentTree{
    private:
    vector<int>segtree;
    public:
    SegmentTree(int n)
    {
        segtree.resize(4*n);
    }
    void buildsegtree(int index,int start,int end,vector<int>&A)
    {
        if(start==end){
        segtree[index]=A[start];
        }
        int mid = (start + end) / 2;
        buildsegtree(2*index+1, start,mid,A);
        buildsegtree(2*index+2,start,mid+1,A);

        segtree[index]=segtree[2*index+1]+segtree[2*index+2];
    }
    int rangesum(int ql,int qr,int start,int end,int index)
    {
        //no over lap
        if(ql>end|| qr<start)
        {
            return 0;
        }
        // complete overlap
        if(ql<=start && qr<=end)
        {
            return segtree[index];
        }
        //partial overlap
        int mid=(start+end)/2;
        int left = rangesum(ql,qr,start,mid,2*index+1);
        int right = rangesum(ql,qr,mid+1,end,2*index+2);
        return left+right;
    }
    void update(int k,int val,int start,int end,int index)
    {
        if(start==end)
        segtree[index]=val;
        int mid=(start+end)/2;
        else if(mid<k)
    }
};
int main()
{
    int n;
    cin>>n;
    vector<int>A(n);
    for(int i=0;i<n;i++)
    cin>>A[i];
    SegmentTree segtree(n);
    segtree.buildsegtree(0,0,0,A);
    int l,r;
    cin>>l>>r;
    segtree.rangesum(1,r,0,n-1,0);

}