function homming(){

xplayer = x
yplayer = y

xenemy = other.x
yenemy = other.y

xhomming = 300
yhomming = - (yplayer - yenemy) * xhomming - xplayer * yenemy + xenemy * yplayer / - (xenemy - xplayer)

}