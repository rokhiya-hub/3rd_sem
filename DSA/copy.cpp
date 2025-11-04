#include<iostream>
using namespace std;

class student 
{
    public:
    string name;
    double cgpa;
    double *cgpaptr;

    student(string n,double c)
    {
        this->name= name;
        cgpaptr=new double;
        *cgpaptr=cgpa;
    }

    student(student &s1)
    {
        this->name=name;
        cgpaptr=new double;
        *cgpaptr=*s1.cgpaptr
    }
};
int main()
{
    student s1("ROKHIYA",9.35);
}