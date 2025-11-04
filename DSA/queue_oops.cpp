#include<iostream>
using namespace std;
class queue{
    private:
    int front,rear,arr[5];
    public:
    queue()
    {
        front = -1;
        rear = -1;
    }
    bool isfull()
    {
        return rear==4;
    }
    bool isempty()
    {
        return front==-1;
    }
    void enqueue(int val){
        if(isempty())
        {
            front=0;
            arr[++rear]=val;
        }
        else if(!isfull())
        {
            arr[++rear]= val;
        }
    }
    int dequeue()
    {
        if (!isempty())
        {
            return arr[front++];
        }
        else {
            return -1;
        }
    }
    int peek()
    {
        return (!isempty())? arr[front]:-1;
    }
    void display()
    {
        cout<<"QUEUE = ";
        for(int i=front;i<=rear;i++)
        {
            cout<<arr[i]<<" ";
        }
    }
};
int main()
{
    queue q1;
    q1.enqueue(10);
    q1.enqueue(20);
    q1.enqueue(30);
    q1.enqueue(40);
    cout<<q1.dequeue()<<"is dequeued"<<endl;
    cout<<q1.dequeue()<<"is dequeued"<<endl;
    q1.enqueue(50);
    cout<<"peek element = "<<q1.peek()<<endl;
    q1.enqueue(60);
    q1.enqueue(70);
    q1.enqueue(80);
    q1.display();
}