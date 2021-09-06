switch(state){
case BeeState.IDLE: BeeStateIdle(); break;
case BeeState.CHASE: BeeStateChase(); break;
case BeeState.ATTACK: BeeStateAttack(); break;
}