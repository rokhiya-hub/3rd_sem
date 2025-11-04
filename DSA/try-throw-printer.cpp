#include<bits/stdc++.h>
using namespace std;
class printer
{
    public:
    int pages;
    printer(int x)
    {
        pages = x;
    }
    void print(string text)
    {
        int n = text.size();
        try
        {
            if(pages<ceil(n/10.0))
            {
                throw "Pages Insufficient to print!";
            }
            else
            {
                cout<<"PRINTED "<<text<<endl;
            }
        }
        catch(const char* msg){
            cout<<msg<<endl;
        }
    }   
};
int main()
{
    printer p1(2);
    p1.print("I am Rokhiya Begum from AIML");
    printer p2(5);
    p2.print("I am Rokhiya Begum from AIML");
}