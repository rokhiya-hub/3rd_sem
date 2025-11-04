/*
1. Declaring Objects
Problem: Create a class Student with roll number and name. Declare two objects and display their
 values using a member function.

*/

#include<iostream>
using namespace std;

class Student
{
    public:
    string name;
    int roll;
    Student(string n,int r)
    {
        name = n;
        roll = r;
    }
    void print()
    {
        cout<< "Name is" <<name<<endl;
        cout<< "Roll is : "<<roll<<endl;
    }
};
int main()
{
    Student s1("ROKHIYA",371);
    Student s2("NAMRATHA",446);
    s1.print();
    s2.print();
}