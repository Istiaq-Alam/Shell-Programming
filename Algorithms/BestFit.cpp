//Best Fit

#include <bits/stdc++.h>
using namespace std;

int main()
{
	int p;
	cout << "Number of process : ";
    cin >> p;

    int pSize[p], bSize[p];

    cout << "\nEnter each process size : ";
    for(int i=0; i<p; i++)
        cin >> pSize[i];

    cout << "\nEnter each block size : ";
    for(int i=0; i<p; i++)
        cin >> bSize[i];

    cout << endl;
    for(int i=0; i<p; i++)
    {
        int mn = INT_MAX, current_mn, mn_index;

        for(int j=0; j<p; j++)
        {
            if(pSize[i] <= bSize[j])
            {
                current_mn = bSize[j] - pSize[i];

                if(current_mn < mn)
                {
                    mn = current_mn;
                    mn_index = j;
                }
            }
        }
        printf("Best fit for %d is block %d (%d).\n", pSize[i], mn_index, bSize[mn_index]);
        bSize[mn_index] = -1;
    }
    return 0;
}
