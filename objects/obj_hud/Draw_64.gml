#region vidas
if global.life > 0 {
	draw_sprite(spr_lifes,1,75,55); // >= 1 de vida
}
else{
	draw_sprite(spr_lifes,2,75,55); // 0 de vida
}
if global.life > 1 {
	draw_sprite(spr_lifes,1,100,55); // >= 2 de vida
}
else{
	draw_sprite(spr_lifes,2,100,55); // < 2 de vida
}
if global.life > 2 {
	draw_sprite(spr_lifes,1,125,55); // >= 3 de vida
}
else{
	draw_sprite(spr_lifes,2,125,55); // < 3 de vida
}
if global.life > 3 {
	draw_sprite(spr_lifes,1,150,55); // >= 4 de vida
}
else{
	draw_sprite(spr_lifes,2,150,55); // < 4 de vida
}/*
if global.life > 4 {
	draw_sprite(spr_lifes,1,175,55); // 5 de vida
}
else{
	draw_sprite(spr_lifes,2,175,55); // < 5 de vida
}*/
#endregion
#region score
placar = string(global.score);
//draw_sprite(spr_score, 1, 75, 100);
//draw_text(100, 100, placar);
#endregion