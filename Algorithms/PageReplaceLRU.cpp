#include <bits/stdc++.h>

using namespace std;

// Print helper using list for memory
void print(const list<int>& main_mem)
{
    for(auto x: main_mem)
        cout << x << " ";
    cout << "\n";
}

int main()
{
    int process[] = {7,0,1,2,0,3,0,4,2,3,0,3,2,1,2,0,1,7,0,1};
    int length = sizeof(process) / sizeof(process[0]);

    int max_main_mem = 3;
    int hit = 0, miss = 0;

    list<int> main_mem; // LRU order: front->most recent, back->least recent
    unordered_map<int, list<int>::iterator> page_table; // maps page to its position in main_mem

    for(int i=0; i<length; i++)
    {
        int page = process[i];

        // Page hit: present in memory (LRU cache)
        if(page_table.find(page) != page_table.end())
        {
            // Move this page to front (most recently used)
            main_mem.erase(page_table[page]);
            main_mem.push_front(page);
            page_table[page] = main_mem.begin();

            cout << "Page hit for " << page << ":- ";
            print(main_mem);
            hit++;
        }
        else
        {
            // Page miss
            miss++;
            cout << "Page miss for " << page << ":- ";

            // If memory is full, remove least recently used (from back)
            if((int)main_mem.size() == max_main_mem)
            {
                int lru_page = main_mem.back();
                main_mem.pop_back();
                page_table.erase(lru_page);
            }

            // Insert the new page at front (most recent)
            main_mem.push_front(page);
            page_table[page] = main_mem.begin();

            print(main_mem);
        }
    }

    cout << "\nTotal page hit : " << hit << endl;
    cout << "Total page miss : " << miss << endl;
    return 0;
}
