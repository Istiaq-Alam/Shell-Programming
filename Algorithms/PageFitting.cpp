#include <iostream>
#include <vector>
#include <queue>
#include <algorithm>
using namespace std;

void printFrames(const vector<int>& frames) {
    cout << "Frames: ";
    for (int page : frames) {
        if (page == -1)
            cout << "[ ] ";
        else
            cout << "[" << page << "] ";
    }
    cout << "\n";
}

int main() {
    int frames_count = 3;
    int pages[] = {1,2,3,2,1,4,5,2,1,2,3,4,5};
    int n = sizeof(pages) / sizeof(pages[0]);
    vector<int> frames(frames_count, -1); // -1 means empty
    queue<int> fifo_order;
    int hits = 0, misses = 0;

    cout << "Page reference string: ";
    for (int i = 0; i < n; ++i)
        cout << pages[i] << " ";
    cout << "\n\n";

    for (int i = 0; i < n; ++i) {
        int page = pages[i];
        // Check if the page is already in a frame
        auto it = find(frames.begin(), frames.end(), page);
        if (it != frames.end()) {
            cout << "Page " << page << ": HIT   ";
            hits++;
        } else {
            cout << "Page " << page << ": MISS  ";
            misses++;
            // Find an empty frame if available
            auto empty = find(frames.begin(), frames.end(), -1);
            if (empty != frames.end()) {
                *empty = page;
                fifo_order.push(distance(frames.begin(), empty));
            } else {
                // Replace the oldest page (FIFO order)
                int idx = fifo_order.front(); fifo_order.pop();
                frames[idx] = page;
                fifo_order.push(idx);
            }
        }
        printFrames(frames);
    }

    cout << "\nTotal page hits: " << hits << endl;
    cout << "Total page misses: " << misses << endl;
    return 0;
}
