/*
2. Access Specifiers and Their Scope
Problem: Create a class Account with private balance, protected accountNumber, and public holderName. Show how to access each correctly.
________________________________________
*/
#include<iostream>
using namespace std;
 class Balance
 {
    private:
    int balance;
    protected:
    int accountNumber;
    public:
    string name;
    Balance( int b,int acc,string n)
    {
        balance = b;
        accountNumber = acc;
        name = n;
    }

    friend void details(Balance b1);

 };
 void details(Balance b1)
 {
    cout<<b1.balance<<endl;
    cout<<b1.accountNumber<<endl;
    cout<<b1.name<<endl;
 }
 int main()
 {
    Balance bal(100000,371,"rokhiya");
    details(bal);
 }