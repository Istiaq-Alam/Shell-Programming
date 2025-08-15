//CPU Scheduling using FCFS
#include <bits/stdc++.h>
using namespace std;

int main()
{
    //cout << "Enter Number of Process : ";
    int n=3;
    //cin >> n;
    int i, j, CT[n], TAT[n], WT[n];
    int PS[]={1,2,3};
    int AT[]={1,2,3};
    int BT[]={24,3,3};
   /* for(i=1; i<=n; i++) 
    {
        cout << "Enter Arrival Time for P" << i << ": ";
        cin >> AT[i];
        cout << "Enter Burst Time for P" << i << ": ";
        cin >> BT[i];
    } */
    cout<< endl;
    for(i=0; i<n-1; i++)
    {
        for(j=0; j<n-i-1; j++)
        {
            if(AT[j] > AT[j+1])
            {
                swap(AT[j],AT[j+1]);
            }
        }
    }
    CT[0]=AT[0]+BT[0];
    for(i=1; i<n; i++)
    {
        CT[i]=CT[i-1]+BT[i];
    }
    int Total_T, Total_W;
    for(i=0; i<n; i++)
    {
        TAT[i]=CT[i]-AT[i];
        WT[i]=TAT[i]-BT[i];

        Total_T=Total_T+TAT[i];
        Total_W=Total_W+WT[i];
    }
    cout << "AT - Arrival Time" << endl;
    cout << "BT - Brust Time" << endl;
    cout << "CT - Completition Time" << endl;
    cout << "TT - Turnaround Time" << endl;
    cout << "WT - Waiting Time" << endl<<endl;
    cout << "-------------------------------------------------"<<endl;
    cout << "|Process |AT\t|BT\t|CT\t|TT\t|WT\t|"<<endl;
    cout << "-------------------------------------------------"<<endl;

    for (i=0; i<n; i++)
    {
        cout << "|P"<<PS[i]<<"\t |"<<AT[i]<<"\t|"<<BT[i]<<"\t|"
        <<CT[i]<<"\t|"<<TAT[i]<<"\t|"<<WT[i]<<"\t|"<<endl;
    }
    cout << "-------------------------------------------------"<<endl;
    cout << "Average Turnaround Time : " <<Total_T/n<<endl;
    cout << "Average Waiting Time : " <<Total_W/n<<endl;
}

