#include<bits/stdc++.h>
using namespace std;

class account{
    public:
    int balance;
    account(int x)
    {
        balance = x; 
    }
    void withdraw(int amount)
    {
        try{
            if(amount>balance)
            throw "Amount is in sufficient";
            else
            cout<<"Amount "<<amount<<" is withdrawn Balance : "<<balance-amount<<endl;
        }
        catch(const char *msg){
            cout<<msg;
        }
    }
};
int main()
{
    account a1(1500);
    a1.withdraw(1000);
    account a2(500);
    a2.withdraw(1000);
}