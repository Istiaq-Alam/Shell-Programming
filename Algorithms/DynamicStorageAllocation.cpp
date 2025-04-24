#include<bits/stdc++.h>
using namespace std;

int First_Fit(int Block[], int Process[])
{

}

int main()
{
    cout << "Dynamic Storage Allocation Using Same Memory Block & Process number"<<endl;
    int n ; // n is Block Size
    cout << "\nEnter Number of Partition of Main Memory Block : " ;
    cin >> n ;
    int Block[n] ;

    cout << "Enter the Size of Partitions (KB) : " << endl;
    for(int i=1; i<=n; i++)
    {
        cout << "Block "<<i <<" : ";
        cin >> Block[i];
    }
    cout << endl;

    cout << "Enter the Size of Processes : " << endl;
    int Process[n];
    for(int i=1; i<=n; i++)
    {
        cout << "Process "<<i<<" : ";
        cin >> Process[i];
    }
    int First_Fit();

}
