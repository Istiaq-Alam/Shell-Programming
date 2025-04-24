// C++ implementation of First - Fit algorithm
#include<bits/stdc++.h>
using namespace std;

// Function to allocate memory to
// blocks as per First fit algorithm
void firstFit(int Block[], int m, int Process[], int n)
{
    // Stores block id of the
    // block allocated to a process
    int allocation[n];

    // Initially no block is assigned to any process
    memset(allocation, -1, sizeof(allocation));

    // pick each process and find suitable blocks
    // according to its size ad assign to it
    for (int i = 0; i < n; i++)
    {
        for (int j = 0; j < m; j++)
        {
            if (Block[j] >= Process[i])
            {
                // allocate block j to p[i] process
                allocation[i] = j;

                // Reduce available memory in this block.
                Block[j] -= Process[i];

                break;
            }
        }
    }

    cout << "\nProcess No.\tProcess Size\tBlock no.\n";
    for (int i = 0; i < n; i++)
    {
        cout << " " << i+1 << "\t\t"
             << Process[i] << "\t\t";
        if (allocation[i] != -1)
            cout << allocation[i] + 1;
        else
            cout << "Not Allocated";
        cout << endl;
    }
}

// Driver code
int main()
{
    cout << "Dynamic Storage Allocation "<<endl;
    int m ; // m is Block Size
    cout << "\nEnter Number of Partition of Main Memory Block : " ;
    cin >> m ;
    int Block[m] ;

    cout << "Enter the Size of Partitions (KB) : " << endl;
    for(int i=1; i<=m; i++)
    {
        cout << "Block "<<i <<" : ";
        cin >> Block[i];
    }
    //cout << endl;

    cout << "Enter the Size of Processes : " << endl;
    int n ; // n is Process Size
    int Process[n];
    for(int i=1; i<=n; i++)
    {
        cout << "Process "<<i <<" : ";
        cin >> Process[i];
    }

    //int m = sizeof(Block) / sizeof(Block[0]);
    //int n = sizeof(Process) / sizeof(Process[0]);

    firstFit(Block, m, Process, n);

    return 0 ;
}

