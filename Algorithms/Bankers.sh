#!/bin/bash

# Number of processes
P=5

# Number of resources
R=3

# Function to calculate the Need matrix
calculateNeed() {
    local need=()
    for ((i = 0; i < P; i++)); do
        for ((j = 0; j < R; j++)); do
            # Need = maxm - allot
            need[$i,$j]=$((maxm[$i,$j] - allot[$i,$j]))
        done
    done
    echo "${need[@]}"
}

# Function to check if the system is in a safe state
isSafe() {
    local need=($(calculateNeed))

    # Arrays to store finish status, work resources and safe sequence
    local finish=()
    local work=()
    local safeSeq=()

    # Initialize finish and work arrays
    for ((i = 0; i < P; i++)); do
        finish[$i]=0
    done
    for ((i = 0; i < R; i++)); do
        work[$i]=${avail[$i]}
    done

    local count=0
    while ((count < P)); do
        local found=false
        for ((p = 0; p < P; p++)); do
            if ((finish[$p] == 0)); then
                local canFinish=true
                for ((j = 0; j < R; j++)); do
                    if ((need[$p,$j] > work[$j])); then
                        canFinish=false
                        break
                    fi
                done

                if $canFinish; then
                    for ((k = 0; k < R; k++)); do
                        work[$k]=$((work[$k] + allot[$p,$k]))
                    done
                    finish[$p]=1
                    safeSeq[$count]=$p
                    ((count++))
                    found=true
                    break
                fi
            fi
        done

        if ! $found; then
            echo "System is not in a safe state"
	    echo "Deadlock Problem Arrived"
            return 1
        fi
    done

    # If system is in a safe state
    echo "System is in safe state."
    echo "Safe sequence: ${safeSeq[@]}"
}

# Input available resources
echo "Enter the available instances of resources (R resources):"
for ((i = 0; i < R; i++)); do
    echo -n "Resource $i: "
    read avail[$i]
done

# Input maximum resources for each process
echo "Enter the maximum resources for each process (P processes x R resources):"
for ((i = 0; i < P; i++)); do
    echo "Process $i (Maximum resources):"
    for ((j = 0; j < R; j++)); do
        echo -n "Resource $j: "
        read maxm[$i,$j]
    done
done

# Input allocated resources for each process
echo "Enter the allocated resources for each process (P processes x R resources):"
for ((i = 0; i < P; i++)); do
    echo "Process $i (Allocated resources):"
    for ((j = 0; j < R; j++)); do
        echo -n "Resource $j: "
        read allot[$i,$j]
    done
done

# Check if the system is in a safe state or not
isSafe
