#!/bin/bash

echo -n "Enter the number of processes: "
read n

# Declare arrays for storing values
declare -a process arrival burst completion turnaround waiting

# Input process details
for ((i=0; i<n; i++)); do
    process[$i]=$((i+1))  # Assign process number
    echo -n "Enter Arrival Time for Process P$((i+1)): "
    read arrival[$i]
    echo -n "Enter Burst Time for Process P$((i+1)): "
    read burst[$i]
done

# Sorting processes based on Arrival Time (Bubble Sort)
for ((i=0; i<n-1; i++)); do
    for ((j=0; j<n-i-1; j++)); do
        if (( arrival[j] > arrival[j+1] )); then
            # Swap arrival time
            temp=${arrival[j]}
            arrival[j]=${arrival[j+1]}
            arrival[j+1]=$temp

            # Swap burst time
            temp=${burst[j]}
            burst[j]=${burst[j+1]}
            burst[j+1]=$temp

            # Swap process number
            temp=${process[j]}
            process[j]=${process[j+1]}
            process[j+1]=$temp
        fi
    done
done

# Calculate Completion Time, Turnaround Time, and Waiting Time
completion[0]=$(( arrival[0] + burst[0] ))
for ((i=1; i<n; i++)); do
    if (( completion[i-1] < arrival[i] )); then
        completion[i]=$(( arrival[i] + burst[i] ))  # Idle time adjustment
    else
        completion[i]=$(( completion[i-1] + burst[i] ))
    fi
done

# Calculate Turnaround Time (TAT) & Waiting Time (WT)
total_tat=0
total_wt=0
for ((i=0; i<n; i++)); do
    turnaround[i]=$(( completion[i] - arrival[i] ))
    waiting[i]=$(( turnaround[i] - burst[i] ))

    total_tat=$(( total_tat + turnaround[i] ))
    total_wt=$(( total_wt + waiting[i] ))
done

# Print the table
echo -e "\nFCFS Scheduling Result:"
echo "-------------------------------------------------------------------------------------"
echo -e "Process\tArrival Time\tBurst Time\tCompletion Time\tTurnaround Time\tWaiting Time"
echo "-------------------------------------------------------------------------------------"
for ((i=0; i<n; i++)); do
    echo -e "P${process[i]}\t${arrival[i]}\t\t${burst[i]}\t\t${completion[i]}\t\t${turnaround[i]}\t\t${waiting[i]}"
done
echo "-------------------------------------------------------------------------------------"

# Calculate Averages
printf "Average Turnaround Time: %0.2f\n" $(( total_tat / n ))
printf "Average Waiting Time: %0.2f\n" $(( total_wt / n ))
