/*
4. Rules for Inline Functions
Problem: Create a class Calculator with inline functions for add, subtract, and multiply two integers
*/

#include<iostream>
using namespace std;
class Calculator
{
    public:
    int a;
    int b;
    Calculator(int x,int y)
    {
        a=x;
        b=y;
    }
    inline void add()
    {
        cout<<"ADD : "<<a+b<<endl;
    }
    inline void sub()
    {
        cout<<"SUB : "<<a-b<<endl;
    }
    inline void mul()
    {
        cout<<"MUL : "<<a*b<<endl;
    }
};
int main()
{
    Calculator c(10,20);
    c.add();
    c.sub();
    c.mul();
}