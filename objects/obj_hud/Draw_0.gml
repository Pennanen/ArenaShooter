draw_sprite_ext(spr_hud_bg,0,hpAnchorX,hpAnchorY-13,1,1,0,c_white,0.8);

for(i=1;i<obj_player.gunClip+1;i++)
{
if (obj_player.gun.reloading) {draw_sprite_ext(spr_friend_hp,2,ammoAnchorX+(i-1)*100/obj_player.gunClip,ammoAnchorY,2/obj_player.gunClip,2,0,c_olive,1);}
else if (i <= obj_player.gunAmmo){draw_sprite_ext(spr_friend_hp,2,ammoAnchorX+(i-1)*100/obj_player.gunClip,ammoAnchorY,2/obj_player.gunClip,2,0,c_white,1);}
else{draw_sprite_ext(spr_friend_hp,2,ammoAnchorX+(i-1)*100/obj_player.gunClip,ammoAnchorY,2/obj_player.gunClip,2,0,c_dkgray,1);}
}
draw_sprite_ext(spr_enemy_hp,2,hpAnchorX,hpAnchorY,3*(obj_player.hpImaginary/obj_player.maxhp),1.5,0,c_white,1);
draw_sprite_ext(spr_friend_hp,0,hpAnchorX,hpAnchorY,3*(obj_player.hp/obj_player.maxhp),1.5,0,c_white,1);	
