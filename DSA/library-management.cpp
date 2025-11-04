#include<bits/stdc++.h>
using namespace std;
class book
{
    public:
    int id;
    string title;
    string author;
    int available;
    book(int id,string title, string author, int available)
    {
        this->id = id;
        this->title=title;
        this->author = author;
        this->available = available;

    }
    void display()
    {
        cout<< "ID : "<<id<<endl;
        cout<< "TITLE : "<<title<<endl;
        cout<< "AUTHOR : "<<author<<endl;
        cout<< "AVAILABLE : "<<available<<endl;

    }
};
class member
{
    public:
    int id;
    string name;
    int phone_number;
    vector<int> borrowed;

    member(int id,string name, int phone_number)
    {
        this->id =id;
        this->name = name;
        this->phone_number=phone_number;
    }
    void borrowbook(int book_id)
    {
        borrowed.push_back(book_id);
    }
    void returnbook(int book_id)
    {
        borrowed.erase(remove(borrowed.begin(),borrowed.end(),book_id),borrowed.end());
    }
    void display()

};
class library
{
    public:
    vector<book>books;
    vector<member>members;
    void addbook(book b)
    {
        books.push_back(b);
    }
    void addmember(member m)
    {
        members.push_back(m);
    }
    void borrowbook(int memberid,int book_id)
    {
        bool f=0;
        for(auto &b : books)
        {
            if(b.id == book_id && b.available > 0)
            {
                for(auto &m : members)
                {
                    if(m.id == memberid)
                    {
                        m.borrowbook(book_id);
                        b.available--;
                        cout << b.title<<" BORROWED BY "<<m.name<<endl;
                        
                        f = 1;
                    }
                }
            }
        }
        if(f ==0)
        cout<<"BOOK IS NOT AVAILABLE"<<endl;
    }
    void returnbook(int memberid,int book_id)
    {
        for(auto &b : books)
        {
            if(b.id == book_id)
            {
                for(auto &m : members){
                if(m.id == memberid)
                {
                    m.returnbook(book_id);
                    b.available++;
                    cout <<b.title<<" RETURNED"<<endl;
                    return;
                }
              }
            }
        }
        cout<< "RETURN FAILED"<< endl;
    }
};

int main()
{
    library lib;
    book b1(1,"c++","Dennis Ritchie",2);
    book b2(2,"java","java expert",1);
    book b3(3,"harry potter","JK Rowling",7);
    book b4(4,"swami and friends","Narayana Murthy",3);
    book b5(5,"Merchant of Venice","William Shakespeare",5);

    lib.addbook(b1);
    lib.addbook(b2);
    lib.addbook(b3);
    lib.addbook(b4);
    lib.addbook(b5);

    member m1(371,"Rokhiya",83094);
    member m2(001,"Alice",78965);
    member m3(446,"Namratha",12364);
    member m4(131,"Bob",15975);
    member m5(133,"Ishwarya",87453);

    lib.addmember(m1);
    lib.addmember(m2);
    lib.addmember(m3);
    lib.addmember(m4);
    lib.addmember(m5);
    
    lib.borrowbook(371,1);
    lib.borrowbook(446,1);
    lib.borrowbook(133,1);
    lib.returnbook(371,1);
    lib.borrowbook(133,1);
    
}
