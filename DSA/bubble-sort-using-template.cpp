#include<bits/stdc++.h>
using namespace std;

template<typename T>
void bubblesort(T arr,int n)
{
    for(int i=0;i<n;i++){
        for(int j=i;j<n-1;j++)
        {
            if(arr[j+1]<arr[j])
            {
                int temp = arr[j+1];
                arr[j+1]=arr[j];
                arr[j]=temp;
            }
        }
    }
    for(int i=0;i<n;i++)
    {
        cout<<arr[i];
    }
}

int main()
{
    int n;
    cin>>n;
    int arr[n];
    for(int i=0;i<n;i++)
    {
        cin>>arr[i];
    }
    bubblesort(arr,n);
    
}