#include<iostream>
using namespace std;
int sum(int a, int b)
{
    return a+b;
    
}
int main()
{
    cout<<"Hello world!!"<<endl;
    int a, b;
    cout<<"Enter the values of a and b: "<<endl;
    cin>>a>>b;
    cout<<sum(a,b);
    return 0;
}