#include<bits/stdc++.h>
using namespace std;

class student{
    public:
    string name;
    int roll;
    char grade;
    student()
    {
        name = "sowmya";
        roll = 490;
        grade = 'A';
    }
    student(string n, int r, char g)
    {
        name = n;
        roll =r;
        grade = g;
    }
    student(string m)
    {
        name = m;
        roll = 10;
        grade = 'B';
    }
    void display()
    {
        cout<<"Name ="<<name<<endl;
        cout<<"Roll No ="<<roll<<endl;
        cout<<"Grade ="<<grade<<endl;
    }
};
int main()
{
    student s1("Rokhiya",371,'A');
    student s2("Alia");
    
    
    cout <<"Student Information"<<endl;
    s1.display();
    s2.display();

    return 0;
}