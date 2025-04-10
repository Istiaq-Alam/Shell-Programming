// Bankers Algorithm

#include <bits/stdc++.h>

using namespace std;

int main()
{
    int p, r ;

    cout << "Enter no of processes : ";
    cin >> p;

    cout << "Enter no of resources : ";
    cin >> r;

    int al[p][r], mx[p][r], av[r], need[p][r];

    //input allocation
    cout << "Enter Allocated resources : " << endl;
    for (int i=0; i<p; i++)
    {
        for (int j=0; j<r; j++)
        {
            cin >> al[i][j];
        }
    }
    cout << endl;

    //input max instances
    cout << "Enter maximum need of resources : " << endl;
    for (int i=0; i<p; i++)
    {
        for (int j=0; j<r; j++)
        {
            cin >> mx[i][j];
        }
    }
    cout << endl;

    //input available resources
    cout << "Enter Available resources : " << endl;
    for (int i=0; i<r; i++)
    {
        cin >> av[i];
    }
    cout << endl;

    // Print need values
    cout << "Need values : " << endl;
    for (int i=0; i<p; i++)
    {
        for (int j=0; j<r; j++)
        {
            need[i][j] = mx[i][j] - al[i][j];   //need = max - allocation
            cout << need[i][j] << " ";
        }
        cout << endl;
    }
    cout << endl;


    int x = 1; // used for while loop
    int y = 0; // used to check all process is done
    cout << "Safe State : " << endl;
    while (x != 0)
    {
        for (int i=0; i<p; i++)
        {
            int z = 0; // used to check if all resources satisfied need

            for (int j=0; j<r; j++)
            {
                if (need[i][j] <= av[j] && (need[i][0] != -1))  // checking if the process is done or not
                {
                    z++;  // counting process
                }
            }

            if (z == r) // all resourse satisfied
            {
                for (int k=0; k<r; k++)
                {
                    av[k] += al[i][k]; // new available after completing a process
                }
                cout << "Process :" << i << endl;
                need[i][0] = -1;    // assign -1 if Process done
                y++;    // counting if process done
            }

        } // end for loop

        if (y == p)  x = 0;  // if all done then

    } // end while

    cout << endl;
    return 0;
}
