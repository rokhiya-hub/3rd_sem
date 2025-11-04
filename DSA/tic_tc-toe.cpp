#include<bits/stdc++.h>
using namespace std;
class cell{
    private:
    int row;
    int col;
    public:
    cell(int r,int c)
    {
        row=r;
        col=c;
    }
    int getrow()
    {
        return row;
    }
    int getcol()
    {
        return col;
    }
};

class player{
    string symbol;
    public:
    player(string s){
        symbol=s;
    }
    string getsymbol()
    {
        return symbol;
    }
};
int main()
{

}