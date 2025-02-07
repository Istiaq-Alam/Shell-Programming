#!/bin/bash

# Terminal settings
stty -echo -icanon time 0 min 0

# Game variables
WIDTH=30
HEIGHT=15
SNAKE="O"
FOOD="*"
SCORE=0

# Snake's initial position
snake_x=($((WIDTH / 2)))
snake_y=($((HEIGHT / 2)))
direction="RIGHT"

# Place food randomly
place_food() {
    food_x=$((RANDOM % (WIDTH - 2) + 1))
    food_y=$((RANDOM % (HEIGHT - 2) + 1))
}

# Draw the game board
draw_board() {
    clear
    echo "Score: $SCORE"
    for ((y=0; y<HEIGHT; y++)); do
        for ((x=0; x<WIDTH; x++)); do
            if (( y == 0 || y == HEIGHT-1 || x == 0 || x == WIDTH-1 )); then
                echo -n "#"
            elif (( x == food_x && y == food_y )); then
                echo -n "$FOOD"
            else
                is_snake_part=false
                for ((i=0; i<${#snake_x[@]}; i++)); do
                    if (( x == snake_x[i] && y == snake_y[i] )); then
                        echo -n "$SNAKE"
                        is_snake_part=true
                        break
                    fi
                done
                $is_snake_part || echo -n " "
            fi
        done
        echo
    done
}

# Move the snake
move_snake() {
    head_x=${snake_x[0]}
    head_y=${snake_y[0]}

    case $direction in
        "UP")    ((head_y--)) ;;
        "DOWN")  ((head_y++)) ;;
        "LEFT")  ((head_x--)) ;;
        "RIGHT") ((head_x++)) ;;
    esac

    # Check collision with walls
    if (( head_x == 0 || head_x == WIDTH-1 || head_y == 0 || head_y == HEIGHT-1 )); then
        game_over
    fi

    # Check collision with itself
    for ((i=0; i<${#snake_x[@]}; i++)); do
        if (( head_x == snake_x[i] && head_y == snake_y[i] )); then
            game_over
        fi
    done

    # Add new head position
    snake_x=($head_x "${snake_x[@]}")
    snake_y=($head_y "${snake_y[@]}")

    # Check food collision
    if (( head_x == food_x && head_y == food_y )); then
        ((SCORE++))
        place_food
    else
        # Remove tail if no food eaten
        unset 'snake_x[-1]'
        unset 'snake_y[-1]'
    fi
}

# Handle keypresses
read_input() {
    read -rsn1 key
    case $key in
        w) [[ $direction != "DOWN" ]] && direction="UP" ;;
        s) [[ $direction != "UP" ]] && direction="DOWN" ;;
        a) [[ $direction != "RIGHT" ]] && direction="LEFT" ;;
        d) [[ $direction != "LEFT" ]] && direction="RIGHT" ;;
        q) game_over ;;
    esac
}

# End the game
game_over() {
    stty echo icanon
    clear
    echo "Game Over! Final Score: $SCORE"
    exit
}

# Initialize the game
place_food

# Game loop
while true; do
    draw_board
    read_input
    move_snake
    sleep 0.1
done
