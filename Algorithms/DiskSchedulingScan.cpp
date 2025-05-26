#include <iostream>
#include <vector>
#include <algorithm>
#include <cstdlib>
using namespace std;

int main() {
    // Hardcoded requests, initial head position, and disk maximum track number
    vector<int> requests = {98, 183, 37, 122, 14, 124, 65, 67};
    int head = 53;
    int disk_max = 199; // maximum track number

    cout << "SCAN (Elevator) Disk Scheduling Simulation (C++)" << endl;
    cout << "Initial head position: " << head << endl;
    cout << "Disk max track: " << disk_max << endl;
    cout << "Request queue: ";
    for (size_t i = 0; i < requests.size(); ++i)
        cout << requests[i] << (i < requests.size()-1 ? " -> " : "");
    cout << endl << endl;

    // Add the initial head and disk ends if needed for complete sweep
    vector<int> to_service = requests;
    to_service.push_back(head);
    sort(to_service.begin(), to_service.end());

    // Find the index of the head in the sorted request list
    int pos = find(to_service.begin(), to_service.end(), head) - to_service.begin();

    int total_movement = 0;
    int current = head;
    cout << "Servicing order and head movements (moving right):" << endl;

    // Servicing requests to the right (higher tracks)
    for (size_t i = pos+1; i < to_service.size(); ++i) {
        cout << "Move from " << current << " to " << to_service[i]
             << " [movement: " << abs(to_service[i] - current) << "]" << endl;
        total_movement += abs(to_service[i] - current);
        current = to_service[i];
    }
    // If last serviced is not at disk_max, move to disk_max
    if (current != disk_max) {
        cout << "Move from " << current << " to " << disk_max
             << " [movement: " << abs(disk_max - current) << "] (reaching end)" << endl;
        total_movement += abs(disk_max - current);
        current = disk_max;
    }
    // Now reverse direction: service remaining requests to the left
    cout << "Reversing direction (moving left):" << endl;
    for (int i = pos-1; i >= 0; --i) {
        cout << "Move from " << current << " to " << to_service[i]
             << " [movement: " << abs(to_service[i] - current) << "]" << endl;
        total_movement += abs(to_service[i] - current);
        current = to_service[i];
    }
    // If not at track 0, optionally move to start (not always necessary)
    /*
    if (current != 0) {
        cout << "Move from " << current << " to 0"
             << " [movement: " << abs(current-0) << "] (reaching leftmost end)" << endl;
        total_movement += abs(current-0);
        current = 0;
    }
    */

    // Count only actual requests for average movement (not including virtual ends)
    int serviced_requests = requests.size();
    double avg_movement = (double)total_movement / serviced_requests;

    cout << "\nTotal head movement: " << total_movement << endl;
    cout << "Average head movement: " << avg_movement << endl;

    return 0;
}

