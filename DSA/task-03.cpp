/* 
3. Defining Member Function
Problem: Create a class Rectangle with length and breadth. Define member functions to calculate area and perimeter
*/
 #include<iostream>
 using namespace std;

 class Rectangle
 {
    public:
    int length;
    int breadth;

    Rectangle(int l,int b)
    {
        length = l;
        breadth = b;
    }
    void area()
    {
        cout<<"Area is :"<<length*breadth<<endl;
    }
    void perimeter()
    {
        cout<<"Perimeter is "<<(2*length)+breadth;
    }
 };
 int main()
 {
    Rectangle r1(10,20);
    r1.area();
    r1.perimeter();
 }