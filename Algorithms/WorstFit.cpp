#include <bits/stdc++.h>
#include <climits>
using namespace std;

int main() 
{
	int p;
	cout << "Number of process : ";
    cin >> p;

    int pSize[p], bSize[p];
    
    cout << "Enter each process size : ";
    for(int i=0; i<p; i++)
        cin >> pSize[i];

    cout << "Enter each block size : ";
    for(int i=0; i<p; i++)
        cin >> bSize[i];

    cout << endl;
    for(int i=0; i<p; i++)
    {
        int mx = INT_MIN, current_mx, mx_index;

        for(int j=0; j<p; j++)
        {
            if(pSize[i] <= bSize[j])
            {
                current_mx = bSize[j] - pSize[i];

                if(current_mx > mx)
                {
                    mx = current_mx;
                    mx_index = j;
                }  
            }
        }
        printf("Worst fit for %d is block %d (%d).\n", pSize[i], mx_index, bSize[mx_index]);
        bSize[mx_index] -= pSize[i];
    }
    return 0;
}
