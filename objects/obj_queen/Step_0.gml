switch (state){
	case QueenPatern.WAIT: QueenPaternWait(); break
	case QueenPatern.FIRST: QueenPaternFirst(); break
	case QueenPatern.LR: QueenPaternLR(); break
	case QueenPatern.PLUNGE: QueenPaternPlunge(); break
	case QueenPatern.CANNON: QueenPaternCannon(); break
	case QueenPatern.BEE: QueenPaternBee(); break
}

show_debug_message(life)