//First Fit
#include <bits/stdc++.h>
using namespace std;

int main() {
	int p, mode;
	cout << "Number of process : ";
    cin >> p;

    int pSize[p], bSize[p], ans[p];

    cout << "\nEnter each process size : ";
    for(int i=0; i<p; i++)
        cin >> pSize[i];

    cout << "\nEnter each block size : ";
    for(int i=0; i<p; i++)
        cin >> bSize[i];

    cout << endl;
    for(int i=0; i<p; i++)
    {
        for(int j=0; j<p; j++)
        {
            if(pSize[i] <= bSize[j])
            {
                printf("First fit for process %d is %d.\n", pSize[i], bSize[j]);
                bSize[j] -= pSize[i];
                break;
            }
        }
    }

return 0;
}
