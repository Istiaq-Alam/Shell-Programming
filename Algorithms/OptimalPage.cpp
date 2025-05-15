#include<bits/stdc++.h>

using namespace std;

void print(vector<int> main_mem)
{
    for(auto x: main_mem)
        cout << x << " ";

    cout << "\n\n";
}

int victim(int process[], int length, int start, vector<int> main_mem, int max_mem)
{
    int page_index = 0;
    int distance = 0;

    for(int i = 0; i<max_mem; i++)
    {
        bool found = false;

        for(int j = start+1; j<length; j++)
        {
            if(main_mem[i] == process[j])
            {
                found = true;

                int current_distance = j - start;
                //cout << "Distance " << distance << "    " << "Current dis " << current_distance << endl;
                if(distance < current_distance)
                {
                    distance = current_distance;
                    page_index = i;
                }
                //cout << "Distance for " << main_mem[i] << " is " << distance << endl;
                //cout << "Index is " << page_index << endl;
                break;
            }
        }

        if(found == false) return i;
    }
    return page_index;
}

int main()
{
    int process[] = {7,0,1,2,0,3,0,4,2,3,0,3,2,1,2,0,1,7,0,1};
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
                cout << "Page hit for " << process[i] << ".\n";
                print(main_mem);
                hit++;
            }

            else
            {
                main_mem.push_back(process[i]);
                cout << "Page miss for " << process[i] << ".\n";
                print(main_mem);
                miss++;
            }
            continue;
        }

        else
        {
            if(fnd != main_mem.end())
            {
                cout << "Page hit for " << process[i] << ".\n";
                print(main_mem);
                hit++;
            }

            else
            {
                cout << "Page miss for " << process[i] << ".\n";
                miss++;

                int replace  = victim(process, length, i, main_mem, max_main_mem);
                main_mem[replace] = process[i];
                print(main_mem);
            }
        }
    }

    cout << "Total page hit : " << hit << endl;
    cout << "Total page miss : " << miss << endl;
    return 0;
}
