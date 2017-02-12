moveSpeed = argument0
startState = argument1 // state enemy enters the loop
goalState = argument2 // if player found what state the enemy should be in

var endState

if pathCounter == 0 {
    if (mp_grid_path(global.grid, path, x, y, playerX, playerY, 1)) {
        path_start(path, moveSpeed, path_action_stop, true)
    }
}

    pathCounter += 1

if distance_to_point(playerX,playerY) < 15 { //(x == playerX && y == playerY) {
    pathCounter = 0
    endState = goalState
} else {
    endState = startState
}

return endState
    

