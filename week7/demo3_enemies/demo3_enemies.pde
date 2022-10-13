// Outline for enemy states
// Enemies have 3 states:
// 1: Alive (shown it regularly)
// 2: Dying (animation as it explodes)
// 3: Dead (hidden)


int[] enemy_states = new int[6];
int[] enemy_x = new int[6];
int[] enemy_y = new int[6];

int enemy_state_alive = 1;
int enemy_state_dying = 2;
int enemy_state_dead  = 3;

void setup(){
  for(int i =0; i<enemy_states.length; i++){
    enemy_states[i] = enemy_state_alive;
  }
}

void draw(){
  enemy_states[2] = enemy_state_dying;
  checkEnemies();
}

void checkEnemies(){
  for(int i =0; i<enemy_states.length; i++){
    if(enemy_states[i] == enemy_state_alive){
      // draw enemy
      ellipse(enemy_x[i], enemy_y[i], 50, 50);
    }
    else if(enemy_states[i] == enemy_state_dying){
      // show explosion
    }
    else if(enemy_states[i] == enemy_state_dead){
      // don't draw
    }
  }
}
