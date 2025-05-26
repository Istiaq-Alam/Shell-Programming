#include <iostream>
#include <vector>
#include <cstdlib>
#include <climits>
using namespace std;

int main() {
    vector<int> requests = {98, 183, 37, 122, 14, 124, 65, 67};
    vector<bool> visited(requests.size(), false);
    int start = 53;

    cout << "SSTF Disk Scheduling Simulation (C++)" << endl;
    cout << "Initial start position: " << start << endl;
    cout << "Request queue: ";
    for (size_t i = 0; i < requests.size(); ++i)
        cout << requests[i] << (i < requests.size()-1 ? " -> " : "");
    cout << endl << endl;

    int total_movement = 0;
    int current = start;

    cout << "Servicing order and start movements:" << endl;
    for (size_t done = 0; done < requests.size(); ++done) {
        int min_dist = INT_MAX, idx = -1;
        // Find unserviced request with minimum distance to current head
        for (size_t i = 0; i < requests.size(); ++i) {
            if (!visited[i]) {
                int dist = abs(current - requests[i]);
                if (dist < min_dist) {
                    min_dist = dist;
                    idx = i;
                }
            }
        }
        // Service this request
        cout << "Move from " << current << " to " << requests[idx]
             << " [movement: " << min_dist << "]" << endl;
        total_movement += min_dist;
        current = requests[idx];
        visited[idx] = true;
    }

    double average_movement = (double)total_movement / requests.size();

    cout << "\nTotal head movement: " << total_movement << endl;
    cout << "Average head movement: " << average_movement << endl;

    return 0;
}

