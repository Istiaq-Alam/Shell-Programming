#include <iostream>
#include <vector>
#include <cstdlib>
using namespace std;

int main() {
    vector<int> requests = {98, 183, 37, 122, 14, 124, 65, 67};
    int start = 53;

    cout << "FCFS Disk Scheduling Simulation (C++)" << endl;
    cout << "Initial start position: " << start << endl;
    cout << "Request queue: ";
    for (size_t i = 0; i < requests.size(); ++i)
        cout << requests[i] << (i < requests.size()-1 ? " -> " : "");
    cout << endl << endl;

    int total_movement = 0;
    int current = start;

    cout << "Servicing order and head movements:" << endl;
    for (size_t i = 0; i < requests.size(); ++i) {
        int move = abs(requests[i] - current);
        cout << "Move from " << current << " to " << requests[i]
             << " [movement: " << move << "]" << endl;
        total_movement += move;
        current = requests[i];
    }

    double average_movement = (double)total_movement / requests.size();

    cout << "\nTotal head movement: " << total_movement << endl;
    cout << "Average head movement: " << average_movement << endl;

    return 0;
}

