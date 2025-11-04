#include<iostream>
using namespace std;

class BankAccount
{
    private:
    double balance;
    double acc_no;

    public:
    string holder_name;

    

    BankAccount(string name,double bal,double no)
    {
        holder_name=name;
        balance=bal;
        acc_no=no;
    }
    
    void setdata (string name,double bal,double no)
    {
        cout<< name<<endl;
        cout<<bal<<endl;
        cout<<no;
    }
};
int main()
{
    BankAccount s1("Rokhiya",100000,371);
    s1.setdata("Rokhiya",100000,371);
    cout<< s1.holder_name<<endl;
    
}