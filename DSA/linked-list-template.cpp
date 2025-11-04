#include<bits/stdc++.h>
using namespace std;
template<typename T>

class node{
    T data;
    node *next;
    public:
    node(T val)
    {
        data = val;
        next = NULL;
    }
};

template<typename T>
class linkedlist{
    node<T>*head;
    public:
    linkedlist()
    {
        head = nullptr;
    }

    void insert(T val)
    {
        node<T>*newnode = new node<T>(val);
        if(head==nullptr)
        {
            head = newnode;
        }
        else
        {
            node<T>
        }
    }

    void display()
    {
        node<T>temp = head;
        while(temp)
        {
            cout<<temp->data<<" ";
            temp=temp->next;
        }
        cout<<endl;
    }
};
int main()
{
    linkedlist<int>list1;
    linkedlist<char>list2;
    list1.insert(10);
    list1.insert(20);
    list1.insert(30);
    list1.insert(40);
    list1.display();

    list2.insert('A');
    list2.insert('B');
    list2.insert('C');
    list2.insert('D');
    list2.display();
}