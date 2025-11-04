// #include<iostream>
#include<bits/stdc++.h>
using namespace std;
class BankAccount
{
    private:
     double balance;
     public:
     BankAccount(double b) : balance(b){}
     friend void auditAccount(BankAccount A);

};
void auditAccount(BankAccount b)
{
    cout<<b.balance;
}
int main()
{
    BankAccount B1(12000);
    auditAccount(B1);
}