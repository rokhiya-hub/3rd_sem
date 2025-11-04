#include<iostream>
using namespace std;

class student
{
    public:
    string name;
    double cgpa;
    
    student(string name,double cgpa)
    {
        this->name= name;
        this->cgpa=cgpa;
    }
};
int main()
{
    student s1("Namratha",9.1);
    cout<<s1.name<<endl;
    cout<<s1.cgpa<<endl;
    return 0;
}