//Page Replacement using FIFO 
#include<bits/stdc++.h>

using namespace std;

int main() 
{
    int process[] = {7,7,1,2,0,3,0,4,2,3,0,3,2,1,2,0,1,7,0,1};
    int length = sizeof(process) / sizeof(process[0]);

    vector<int> main_mem;
    int max_main_mem = 3, start = 0;
    int hit = 0, miss = 0;

    for(int i=0; i<length; i++)
    {
        auto fnd = find(main_mem.begin(), main_mem.end(), process[i]);
        
        if(main_mem.size() < 3)
        {
            if(fnd != main_mem.end())
            {
                cout << "Page hit for " << process[i] << ".\n\n";
                hit++;
            }

            else
            {
                main_mem.push_back(process[i]);
                cout << "Page miss for " << process[i] << ".\n";
                for(auto it: main_mem) cout << it << " ";
                cout << "\n\n";
                miss++;
            }
            continue;
        }      

        if(fnd != main_mem.end()) 
        {
            cout << "Page hit for " << process[i] << ".\n\n";
            hit++;
        }

        else
        {
            cout << "Page miss for " << process[i] << ".\n";
            main_mem[start] = process[i];
            miss++;
            start++;

            for(auto it: main_mem) cout << it << " ";
            
            if(start == max_main_mem) start = 0;
            cout << "\n\n";
        }
    }

    cout << "Total page hit : " << hit << endl;
    cout << "Total page miss : " << miss << endl;
    return 0;
}